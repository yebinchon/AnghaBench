
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int EINVAL ;

 unsigned long vgic_mmio_read_v3_misc (struct kvm_vcpu*,int,unsigned int) ;
 int vgic_mmio_write_v3_misc (struct kvm_vcpu*,int,unsigned int,unsigned long) ;

__attribute__((used)) static int vgic_mmio_uaccess_write_v3_misc(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len,
        unsigned long val)
{
 switch (addr & 0x0c) {
 case 128:
  if (val != vgic_mmio_read_v3_misc(vcpu, addr, len))
   return -EINVAL;
 }

 vgic_mmio_write_v3_misc(vcpu, addr, len, val);
 return 0;
}
