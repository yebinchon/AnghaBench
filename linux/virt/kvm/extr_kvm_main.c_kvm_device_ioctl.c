
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_device {TYPE_2__* ops; TYPE_1__* kvm; } ;
struct file {struct kvm_device* private_data; } ;
struct TYPE_6__ {scalar_t__ mm; } ;
struct TYPE_5__ {long (* ioctl ) (struct kvm_device*,unsigned int,unsigned long) ;int has_attr; int get_attr; int set_attr; } ;
struct TYPE_4__ {scalar_t__ mm; } ;


 long EIO ;
 long ENOTTY ;



 TYPE_3__* current ;
 long kvm_device_ioctl_attr (struct kvm_device*,int ,unsigned long) ;
 long stub1 (struct kvm_device*,unsigned int,unsigned long) ;

__attribute__((used)) static long kvm_device_ioctl(struct file *filp, unsigned int ioctl,
        unsigned long arg)
{
 struct kvm_device *dev = filp->private_data;

 if (dev->kvm->mm != current->mm)
  return -EIO;

 switch (ioctl) {
 case 128:
  return kvm_device_ioctl_attr(dev, dev->ops->set_attr, arg);
 case 130:
  return kvm_device_ioctl_attr(dev, dev->ops->get_attr, arg);
 case 129:
  return kvm_device_ioctl_attr(dev, dev->ops->has_attr, arg);
 default:
  if (dev->ops->ioctl)
   return dev->ops->ioctl(dev, ioctl, arg);

  return -ENOTTY;
 }
}
