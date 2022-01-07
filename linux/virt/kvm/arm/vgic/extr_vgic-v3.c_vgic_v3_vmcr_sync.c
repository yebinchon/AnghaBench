
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_v3_cpu_if {int vgic_vmcr; int vgic_sre; } ;
struct TYPE_3__ {struct vgic_v3_cpu_if vgic_v3; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int __vgic_v3_read_vmcr ;
 int kvm_call_hyp_ret (int ) ;
 scalar_t__ likely (int ) ;

void vgic_v3_vmcr_sync(struct kvm_vcpu *vcpu)
{
 struct vgic_v3_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v3;

 if (likely(cpu_if->vgic_sre))
  cpu_if->vgic_vmcr = kvm_call_hyp_ret(__vgic_v3_read_vmcr);
}
