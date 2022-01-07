
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int created; int irq_num; } ;
struct TYPE_3__ {TYPE_2__ pmu; int features; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int KVM_ARM_VCPU_PMU_V3 ;
 scalar_t__ irqchip_in_kernel (int ) ;
 int kvm_arm_pmu_irq_initialized (struct kvm_vcpu*) ;
 int kvm_arm_support_pmu_v3 () ;
 int kvm_vgic_set_owner (struct kvm_vcpu*,int ,TYPE_2__*) ;
 int test_bit (int ,int ) ;
 int vgic_initialized (int ) ;

__attribute__((used)) static int kvm_arm_pmu_v3_init(struct kvm_vcpu *vcpu)
{
 if (!kvm_arm_support_pmu_v3())
  return -ENODEV;

 if (!test_bit(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
  return -ENXIO;

 if (vcpu->arch.pmu.created)
  return -EBUSY;

 if (irqchip_in_kernel(vcpu->kvm)) {
  int ret;






  if (!vgic_initialized(vcpu->kvm))
   return -ENODEV;

  if (!kvm_arm_pmu_irq_initialized(vcpu))
   return -ENXIO;

  ret = kvm_vgic_set_owner(vcpu, vcpu->arch.pmu.irq_num,
      &vcpu->arch.pmu);
  if (ret)
   return ret;
 }

 vcpu->arch.pmu.created = 1;
 return 0;
}
