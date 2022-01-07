
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device {int dummy; } ;
struct file {struct kvm_device* private_data; int * f_op; } ;


 int kvm_device_fops ;

struct kvm_device *kvm_device_from_filp(struct file *filp)
{
 if (filp->f_op != &kvm_device_fops)
  return ((void*)0);

 return filp->private_data;
}
