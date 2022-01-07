
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_pmu {int irq_level; } ;
struct TYPE_4__ {struct kvm_pmu pmu; } ;
struct kvm_vcpu {int kvm; TYPE_3__* run; TYPE_1__ arch; } ;
struct kvm_sync_regs {int device_irq_level; } ;
struct TYPE_5__ {struct kvm_sync_regs regs; } ;
struct TYPE_6__ {TYPE_2__ s; } ;


 int KVM_ARM_DEV_PMU ;
 int irqchip_in_kernel (int ) ;
 scalar_t__ likely (int ) ;

bool kvm_pmu_should_notify_user(struct kvm_vcpu *vcpu)
{
 struct kvm_pmu *pmu = &vcpu->arch.pmu;
 struct kvm_sync_regs *sregs = &vcpu->run->s.regs;
 bool run_level = sregs->device_irq_level & KVM_ARM_DEV_PMU;

 if (likely(irqchip_in_kernel(vcpu->kvm)))
  return 0;

 return pmu->irq_level != run_level;
}
