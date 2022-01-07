
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int vcpu_id; } ;
typedef int name ;


 int ITOA_MAX_LEN ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int anon_inode_getfd (char*,int *,struct kvm_vcpu*,int) ;
 int kvm_vcpu_fops ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int create_vcpu_fd(struct kvm_vcpu *vcpu)
{
 char name[8 + 1 + ITOA_MAX_LEN + 1];

 snprintf(name, sizeof(name), "kvm-vcpu:%d", vcpu->vcpu_id);
 return anon_inode_getfd(name, &kvm_vcpu_fops, vcpu, O_RDWR | O_CLOEXEC);
}
