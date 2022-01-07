
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_register_region {int dummy; } ;
struct vgic_io_device {scalar_t__ base_addr; int nr_regions; int regions; } ;
struct kvm_vcpu {int kvm; } ;
typedef scalar_t__ gpa_t ;


 int check_region (int ,struct vgic_register_region const*,scalar_t__,int) ;
 struct vgic_register_region* vgic_find_mmio_region (int ,int ,scalar_t__) ;

const struct vgic_register_region *
vgic_get_mmio_region(struct kvm_vcpu *vcpu, struct vgic_io_device *iodev,
       gpa_t addr, int len)
{
 const struct vgic_register_region *region;

 region = vgic_find_mmio_region(iodev->regions, iodev->nr_regions,
           addr - iodev->base_addr);
 if (!region || !check_region(vcpu->kvm, region, addr, len))
  return ((void*)0);

 return region;
}
