
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_register_region {int dummy; } ;
struct kvm_device_attr {int attr; } ;
struct kvm_device {int dummy; } ;
typedef int gpa_t ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENXIO ;
 int GITS_PIDR4 ;
 int GITS_TYPER ;
 int its_registers ;
 struct vgic_register_region* vgic_find_mmio_region (int ,int ,int) ;

__attribute__((used)) static int vgic_its_has_attr_regs(struct kvm_device *dev,
      struct kvm_device_attr *attr)
{
 const struct vgic_register_region *region;
 gpa_t offset = attr->attr;
 int align;

 align = (offset < GITS_TYPER) || (offset >= GITS_PIDR4) ? 0x3 : 0x7;

 if (offset & align)
  return -EINVAL;

 region = vgic_find_mmio_region(its_registers,
           ARRAY_SIZE(its_registers),
           offset);
 if (!region)
  return -ENXIO;

 return 0;
}
