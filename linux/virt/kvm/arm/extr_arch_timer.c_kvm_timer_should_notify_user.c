
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int kvm; TYPE_2__* run; } ;
struct kvm_sync_regs {int device_irq_level; } ;
struct arch_timer_context {int dummy; } ;
struct TYPE_3__ {struct kvm_sync_regs regs; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 int KVM_ARM_DEV_EL1_PTIMER ;
 int KVM_ARM_DEV_EL1_VTIMER ;
 int irqchip_in_kernel (int ) ;
 int kvm_timer_should_fire (struct arch_timer_context*) ;
 scalar_t__ likely (int ) ;
 struct arch_timer_context* vcpu_ptimer (struct kvm_vcpu*) ;
 struct arch_timer_context* vcpu_vtimer (struct kvm_vcpu*) ;

bool kvm_timer_should_notify_user(struct kvm_vcpu *vcpu)
{
 struct arch_timer_context *vtimer = vcpu_vtimer(vcpu);
 struct arch_timer_context *ptimer = vcpu_ptimer(vcpu);
 struct kvm_sync_regs *sregs = &vcpu->run->s.regs;
 bool vlevel, plevel;

 if (likely(irqchip_in_kernel(vcpu->kvm)))
  return 0;

 vlevel = sregs->device_irq_level & KVM_ARM_DEV_EL1_VTIMER;
 plevel = sregs->device_irq_level & KVM_ARM_DEV_EL1_PTIMER;

 return kvm_timer_should_fire(vtimer) != vlevel ||
        kvm_timer_should_fire(ptimer) != plevel;
}
