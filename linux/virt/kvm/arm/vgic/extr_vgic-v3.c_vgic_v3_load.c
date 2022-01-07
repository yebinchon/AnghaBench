
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_v3_cpu_if {struct kvm_vcpu* vgic_vmcr; int vgic_sre; } ;
struct TYPE_3__ {struct vgic_v3_cpu_if vgic_v3; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int __vgic_v3_activate_traps (struct kvm_vcpu*) ;
 int __vgic_v3_restore_aprs ;
 int __vgic_v3_write_vmcr ;
 scalar_t__ has_vhe () ;
 int kvm_call_hyp (int ,struct kvm_vcpu*) ;
 scalar_t__ likely (int ) ;

void vgic_v3_load(struct kvm_vcpu *vcpu)
{
 struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;






 if (likely(cpu_if->vgic_sre))
  kvm_call_hyp(__vgic_v3_write_vmcr, cpu_if->vgic_vmcr);

 kvm_call_hyp(__vgic_v3_restore_aprs, vcpu);

 if (has_vhe())
  __vgic_v3_activate_traps(vcpu);
}
