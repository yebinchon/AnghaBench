
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; int debugfs_dentry; } ;
struct inode {int dummy; } ;
struct file {struct kvm_vcpu* private_data; } ;


 int debugfs_remove_recursive (int ) ;
 int kvm_put_kvm (int ) ;

__attribute__((used)) static int kvm_vcpu_release(struct inode *inode, struct file *filp)
{
 struct kvm_vcpu *vcpu = filp->private_data;

 debugfs_remove_recursive(vcpu->debugfs_dentry);
 kvm_put_kvm(vcpu->kvm);
 return 0;
}
