
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_pmu {int irq_level; int irq_num; } ;
struct TYPE_2__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {int vcpu_id; int kvm; TYPE_1__ arch; } ;


 int WARN_ON (int) ;
 int irqchip_in_kernel (int ) ;
 int kvm_arm_pmu_v3_ready (struct kvm_vcpu*) ;
 int kvm_pmu_overflow_status (struct kvm_vcpu*) ;
 int kvm_vgic_inject_irq (int ,int ,int ,int,struct kvm_pmu*) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void kvm_pmu_update_state(struct kvm_vcpu *vcpu)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 bool overflow;

 if (!kvm_arm_pmu_v3_ready(vcpu))
  return;

 overflow = !!kvm_pmu_overflow_status(vcpu);
 if (pmu->irq_level == overflow)
  return;

 pmu->irq_level = overflow;

 if (likely(irqchip_in_kernel(vcpu->kvm))) {
  int ret = kvm_vgic_inject_irq(vcpu->kvm, vcpu->vcpu_id,
           pmu->irq_num, overflow, pmu);
  WARN_ON(ret);
 }
}
