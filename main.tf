module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-04ee234414d17a92e"

  private_subnets = ["subnet-0dd340cfe7dd4f044", "subnet-0ed44029c9f29e80f"]
  public_subnets  = ["subnet-02d5562a1729fa542", "subnet-07a92d6afac6daf3b"]
}