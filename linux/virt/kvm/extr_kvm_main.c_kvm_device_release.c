
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_device {TYPE_1__* ops; int vm_node; struct kvm* kvm; } ;
struct kvm {int lock; } ;
struct inode {int dummy; } ;
struct file {struct kvm_device* private_data; } ;
struct TYPE_2__ {int (* release ) (struct kvm_device*) ;} ;


 int kvm_put_kvm (struct kvm*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct kvm_device*) ;

__attribute__((used)) static int kvm_device_release(struct inode *inode, struct file *filp)
{
 struct kvm_device *dev = filp->private_data;
 struct kvm *kvm = dev->kvm;

 if (dev->ops->release) {
  mutex_lock(&kvm->lock);
  list_del(&dev->vm_node);
  dev->ops->release(dev);
  mutex_unlock(&kvm->lock);
 }

 kvm_put_kvm(kvm);
 return 0;
}
