
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int GIC_PIDR2_ARCH_GICv3 ;
__attribute__((used)) static unsigned long vgic_mmio_read_its_idregs(struct kvm *kvm,
            struct vgic_its *its,
            gpa_t addr, unsigned int len)
{
 switch (addr & 0xffff) {
 case 131:
  return 0x92;
 case 130:
  return 0xb4;
 case 129:
  return GIC_PIDR2_ARCH_GICv3 | 0x0b;
 case 128:
  return 0x40;

 case 135:
  return 0x0d;
 case 134:
  return 0xf0;
 case 133:
  return 0x05;
 case 132:
  return 0xb1;
 }

 return 0;
}
