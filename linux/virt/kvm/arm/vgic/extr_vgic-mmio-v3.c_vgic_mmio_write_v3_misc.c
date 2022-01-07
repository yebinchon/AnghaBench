
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_dist {int enabled; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
typedef int gpa_t ;
struct TYPE_3__ {struct vgic_dist vgic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;



 unsigned long GICD_CTLR_ENABLE_SS_G1 ;


 int vgic_kick_vcpus (TYPE_2__*) ;

__attribute__((used)) static void vgic_mmio_write_v3_misc(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len,
        unsigned long val)
{
 struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
 bool was_enabled = dist->enabled;

 switch (addr & 0x0c) {
 case 130:
  dist->enabled = val & GICD_CTLR_ENABLE_SS_G1;

  if (!was_enabled && dist->enabled)
   vgic_kick_vcpus(vcpu->kvm);
  break;
 case 128:
 case 129:
  return;
 }
}
