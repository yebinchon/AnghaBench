
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int irq_num; int ready; int created; } ;
struct TYPE_4__ {TYPE_1__ pmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 int EINVAL ;
 int irq_is_ppi (int) ;
 scalar_t__ irqchip_in_kernel (int ) ;
 scalar_t__ kvm_arm_pmu_irq_initialized (struct kvm_vcpu*) ;
 int kvm_pmu_vcpu_reset (struct kvm_vcpu*) ;
 int vgic_valid_spi (int ,int) ;

int kvm_arm_pmu_v3_enable(struct kvm_vcpu *vcpu)
{
 if (!vcpu->arch.pmu.created)
  return 0;






 if (irqchip_in_kernel(vcpu->kvm)) {
  int irq = vcpu->arch.pmu.irq_num;
  if (!kvm_arm_pmu_irq_initialized(vcpu))
   return -EINVAL;







  if (!irq_is_ppi(irq) && !vgic_valid_spi(vcpu->kvm, irq))
   return -EINVAL;
 } else if (kvm_arm_pmu_irq_initialized(vcpu)) {
     return -EINVAL;
 }

 kvm_pmu_vcpu_reset(vcpu);
 vcpu->arch.pmu.ready = 1;

 return 0;
}
