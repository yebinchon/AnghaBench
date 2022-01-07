
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct kvm_device {TYPE_1__* ops; } ;
struct file {struct kvm_device* private_data; } ;
struct TYPE_2__ {int (* mmap ) (struct kvm_device*,struct vm_area_struct*) ;} ;


 int ENODEV ;
 int stub1 (struct kvm_device*,struct vm_area_struct*) ;

__attribute__((used)) static int kvm_device_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct kvm_device *dev = filp->private_data;

 if (dev->ops->mmap)
  return dev->ops->mmap(dev, vma);

 return -ENODEV;
}
