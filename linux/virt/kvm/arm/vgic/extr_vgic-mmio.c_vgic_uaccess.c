
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_io_device {int dev; } ;
struct kvm_vcpu {int dummy; } ;


 int vgic_uaccess_read (struct kvm_vcpu*,int *,int,int *) ;
 int vgic_uaccess_write (struct kvm_vcpu*,int *,int,int *) ;

int vgic_uaccess(struct kvm_vcpu *vcpu, struct vgic_io_device *dev,
   bool is_write, int offset, u32 *val)
{
 if (is_write)
  return vgic_uaccess_write(vcpu, &dev->dev, offset, val);
 else
  return vgic_uaccess_read(vcpu, &dev->dev, offset, val);
}
