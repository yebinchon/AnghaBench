
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;




__attribute__((used)) static unsigned long vgic_mmio_read_v3_idregs(struct kvm_vcpu *vcpu,
           gpa_t addr, unsigned int len)
{
 switch (addr & 0xffff) {
 case 128:

  return 0x3b;
 }

 return 0;
}
