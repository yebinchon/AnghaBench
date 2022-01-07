
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vgic_v2_cpu_if {int vgic_apr; } ;
struct TYPE_4__ {struct vgic_v2_cpu_if vgic_v2; } ;
struct TYPE_5__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {scalar_t__ vctrl_base; } ;


 scalar_t__ GICH_APR ;
 TYPE_3__ kvm_vgic_global_state ;
 int readl_relaxed (scalar_t__) ;
 int vgic_v2_vmcr_sync (struct kvm_vcpu*) ;

void vgic_v2_put(struct kvm_vcpu *vcpu)
{
 struct vgic_v2_cpu_if *cpu_if = &vcpu->arch.vgic_cpu.vgic_v2;

 vgic_v2_vmcr_sync(vcpu);
 cpu_if->vgic_apr = readl_relaxed(kvm_vgic_global_state.vctrl_base + GICH_APR);
}
