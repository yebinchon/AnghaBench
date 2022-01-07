
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct arch_timer_context {int dummy; } ;


 int enable_percpu_irq (int ,int ) ;
 int has_gic_active_state ;
 int host_vtimer_irq ;
 int host_vtimer_irq_flags ;
 int kvm_timer_should_fire (struct arch_timer_context*) ;
 int kvm_timer_update_irq (struct kvm_vcpu*,int,struct arch_timer_context*) ;
 int set_timer_irq_phys_active (struct arch_timer_context*,int) ;
 scalar_t__ static_branch_likely (int *) ;
 struct arch_timer_context* vcpu_vtimer (struct kvm_vcpu*) ;

__attribute__((used)) static void unmask_vtimer_irq_user(struct kvm_vcpu *vcpu)
{
 struct arch_timer_context *vtimer = vcpu_vtimer(vcpu);

 if (!kvm_timer_should_fire(vtimer)) {
  kvm_timer_update_irq(vcpu, 0, vtimer);
  if (static_branch_likely(&has_gic_active_state))
   set_timer_irq_phys_active(vtimer, 0);
  else
   enable_percpu_irq(host_vtimer_irq, host_vtimer_irq_flags);
 }
}
