
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_io_device {int nr_regions; int regions; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int vgic_uaccess (struct kvm_vcpu*,struct vgic_io_device*,int,int,int *) ;
 int vgic_v3_dist_registers ;

int vgic_v3_dist_uaccess(struct kvm_vcpu *vcpu, bool is_write,
    int offset, u32 *val)
{
 struct vgic_io_device dev = {
  .regions = vgic_v3_dist_registers,
  .nr_regions = ARRAY_SIZE(vgic_v3_dist_registers),
 };

 return vgic_uaccess(vcpu, &dev, is_write, offset, val);
}
