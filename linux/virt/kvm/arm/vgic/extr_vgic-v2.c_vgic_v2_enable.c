
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vgic_hcr; scalar_t__ vgic_vmcr; } ;
struct TYPE_5__ {TYPE_1__ vgic_v2; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 int GICH_HCR_EN ;

void vgic_v2_enable(struct kvm_vcpu *vcpu)
{





 vcpu->arch.vgic_cpu.vgic_v2.vgic_vmcr = 0;


 vcpu->arch.vgic_cpu.vgic_v2.vgic_hcr = GICH_HCR_EN;
}
