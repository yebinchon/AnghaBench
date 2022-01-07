
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ irq_level; } ;
struct TYPE_8__ {TYPE_3__ pmu; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_2__* run; } ;
struct kvm_sync_regs {int device_irq_level; } ;
struct TYPE_5__ {struct kvm_sync_regs regs; } ;
struct TYPE_6__ {TYPE_1__ s; } ;


 int KVM_ARM_DEV_PMU ;

void kvm_pmu_update_run(struct kvm_vcpu *vcpu)
{
 struct kvm_sync_regs *regs = &vcpu->run->s.regs;


 regs->device_irq_level &= ~KVM_ARM_DEV_PMU;
 if (vcpu->arch.pmu.irq_level)
  regs->device_irq_level |= KVM_ARM_DEV_PMU;
}
