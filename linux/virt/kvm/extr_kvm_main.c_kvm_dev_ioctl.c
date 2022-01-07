
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EINVAL ;
 long EOPNOTSUPP ;
 long KVM_API_VERSION ;







 long PAGE_SIZE ;
 long kvm_arch_dev_ioctl (struct file*,unsigned int,unsigned long) ;
 long kvm_dev_ioctl_create_vm (unsigned long) ;
 long kvm_vm_ioctl_check_extension_generic (int *,unsigned long) ;

__attribute__((used)) static long kvm_dev_ioctl(struct file *filp,
     unsigned int ioctl, unsigned long arg)
{
 long r = -EINVAL;

 switch (ioctl) {
 case 132:
  if (arg)
   goto out;
  r = KVM_API_VERSION;
  break;
 case 133:
  r = kvm_dev_ioctl_create_vm(arg);
  break;
 case 134:
  r = kvm_vm_ioctl_check_extension_generic(((void*)0), arg);
  break;
 case 131:
  if (arg)
   goto out;
  r = PAGE_SIZE;






  break;
 case 129:
 case 128:
 case 130:
  r = -EOPNOTSUPP;
  break;
 default:
  return kvm_arch_dev_ioctl(filp, ioctl, arg);
 }
out:
 return r;
}
