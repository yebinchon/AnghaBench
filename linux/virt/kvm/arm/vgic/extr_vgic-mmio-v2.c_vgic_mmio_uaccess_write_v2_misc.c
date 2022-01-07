
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_3__* kvm; } ;
typedef int gpa_t ;
struct TYPE_4__ {int v2_groups_user_writable; } ;
struct TYPE_5__ {TYPE_1__ vgic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 int EINVAL ;

 unsigned long vgic_mmio_read_v2_misc (struct kvm_vcpu*,int,unsigned int) ;
 int vgic_mmio_write_v2_misc (struct kvm_vcpu*,int,unsigned int,unsigned long) ;

__attribute__((used)) static int vgic_mmio_uaccess_write_v2_misc(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len,
        unsigned long val)
{
 switch (addr & 0x0c) {
 case 128:
  if (val != vgic_mmio_read_v2_misc(vcpu, addr, len))
   return -EINVAL;
  vcpu->kvm->arch.vgic.v2_groups_user_writable = 1;
  return 0;
 }

 vgic_mmio_write_v2_misc(vcpu, addr, len, val);
 return 0;
}
