
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vgic_v3_cpu_if {int vgic_sre; int vgic_hcr; scalar_t__ vgic_vmcr; } ;
struct TYPE_10__ {int num_id_bits; int num_pri_bits; int pendbaser; struct vgic_v3_cpu_if vgic_v3; } ;
struct TYPE_11__ {TYPE_4__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_3__* kvm; } ;
struct TYPE_12__ {int ich_vtr_el2; } ;
struct TYPE_7__ {scalar_t__ vgic_model; } ;
struct TYPE_8__ {TYPE_1__ vgic; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;


 int ICC_SRE_EL1_DFB ;
 int ICC_SRE_EL1_DIB ;
 int ICC_SRE_EL1_SRE ;
 int ICH_HCR_EN ;
 int ICH_HCR_TALL0 ;
 int ICH_HCR_TALL1 ;
 int ICH_HCR_TC ;
 int ICH_VTR_ID_BITS_MASK ;
 int ICH_VTR_ID_BITS_SHIFT ;
 int ICH_VTR_PRI_BITS_MASK ;
 int ICH_VTR_PRI_BITS_SHIFT ;
 int INITIAL_PENDBASER_VALUE ;
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;
 scalar_t__ common_trap ;
 scalar_t__ group0_trap ;
 scalar_t__ group1_trap ;
 TYPE_6__ kvm_vgic_global_state ;

void vgic_v3_enable(struct kvm_vcpu *vcpu)
{
 struct vgic_v3_cpu_if *vgic_v3 = &vcpu->arch.vgic_cpu.vgic_v3;






 vgic_v3->vgic_vmcr = 0;







 if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
  vgic_v3->vgic_sre = (ICC_SRE_EL1_DIB |
         ICC_SRE_EL1_DFB |
         ICC_SRE_EL1_SRE);
  vcpu->arch.vgic_cpu.pendbaser = INITIAL_PENDBASER_VALUE;
 } else {
  vgic_v3->vgic_sre = 0;
 }

 vcpu->arch.vgic_cpu.num_id_bits = (kvm_vgic_global_state.ich_vtr_el2 &
        ICH_VTR_ID_BITS_MASK) >>
        ICH_VTR_ID_BITS_SHIFT;
 vcpu->arch.vgic_cpu.num_pri_bits = ((kvm_vgic_global_state.ich_vtr_el2 &
         ICH_VTR_PRI_BITS_MASK) >>
         ICH_VTR_PRI_BITS_SHIFT) + 1;


 vgic_v3->vgic_hcr = ICH_HCR_EN;
 if (group0_trap)
  vgic_v3->vgic_hcr |= ICH_HCR_TALL0;
 if (group1_trap)
  vgic_v3->vgic_hcr |= ICH_HCR_TALL1;
 if (common_trap)
  vgic_v3->vgic_hcr |= ICH_HCR_TC;
}
