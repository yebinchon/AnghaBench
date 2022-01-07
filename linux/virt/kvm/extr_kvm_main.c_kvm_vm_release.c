
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct kvm* private_data; } ;


 int kvm_irqfd_release (struct kvm*) ;
 int kvm_put_kvm (struct kvm*) ;

__attribute__((used)) static int kvm_vm_release(struct inode *inode, struct file *filp)
{
 struct kvm *kvm = filp->private_data;

 kvm_irqfd_release(kvm);

 kvm_put_kvm(kvm);
 return 0;
}
