
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int irq; } ;
struct arch_timer_context {TYPE_1__ irq; } ;


 int BUG () ;
 struct kvm_vcpu* kvm_arm_get_running_vcpu () ;
 int kvm_timer_should_fire (struct arch_timer_context*) ;
 struct arch_timer_context* vcpu_ptimer (struct kvm_vcpu*) ;
 struct arch_timer_context* vcpu_vtimer (struct kvm_vcpu*) ;

bool kvm_arch_timer_get_input_level(int vintid)
{
 struct kvm_vcpu *vcpu = kvm_arm_get_running_vcpu();
 struct arch_timer_context *timer;

 if (vintid == vcpu_vtimer(vcpu)->irq.irq)
  timer = vcpu_vtimer(vcpu);
 else if (vintid == vcpu_ptimer(vcpu)->irq.irq)
  timer = vcpu_ptimer(vcpu);
 else
  BUG();

 return kvm_timer_should_fire(timer);
}
