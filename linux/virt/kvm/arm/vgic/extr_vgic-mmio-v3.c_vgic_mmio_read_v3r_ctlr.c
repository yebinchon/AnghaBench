
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_cpu {scalar_t__ lpis_enabled; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gpa_t ;


 unsigned long GICR_CTLR_ENABLE_LPIS ;

__attribute__((used)) static unsigned long vgic_mmio_read_v3r_ctlr(struct kvm_vcpu *vcpu,
          gpa_t addr, unsigned int len)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;

 return vgic_cpu->lpis_enabled ? GICR_CTLR_ENABLE_LPIS : 0;
}
