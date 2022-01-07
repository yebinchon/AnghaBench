
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_cpu {int lpis_enabled; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
typedef int gpa_t ;


 unsigned long GICR_CTLR_ENABLE_LPIS ;
 int vgic_enable_lpis (struct kvm_vcpu*) ;
 int vgic_flush_pending_lpis (struct kvm_vcpu*) ;
 int vgic_has_its (int ) ;
 int vgic_its_invalidate_cache (int ) ;

__attribute__((used)) static void vgic_mmio_write_v3r_ctlr(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
 bool was_enabled = vgic_cpu->lpis_enabled;

 if (!vgic_has_its(vcpu->kvm))
  return;

 vgic_cpu->lpis_enabled = val & GICR_CTLR_ENABLE_LPIS;

 if (was_enabled && !vgic_cpu->lpis_enabled) {
  vgic_flush_pending_lpis(vcpu);
  vgic_its_invalidate_cache(vcpu->kvm);
 }

 if (!was_enabled && vgic_cpu->lpis_enabled)
  vgic_enable_lpis(vcpu);
}
