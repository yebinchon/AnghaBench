
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ level; } ;
struct arch_timer_context {TYPE_1__ irq; } ;


 int disable_percpu_irq (int ) ;
 int enable_percpu_irq (int ,int ) ;
 int host_vtimer_irq ;
 int host_vtimer_irq_flags ;
 int kvm_timer_should_fire (struct arch_timer_context*) ;
 int kvm_timer_update_irq (struct kvm_vcpu*,int ,struct arch_timer_context*) ;
 struct arch_timer_context* vcpu_vtimer (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_timer_vcpu_load_nogic(struct kvm_vcpu *vcpu)
{
 struct arch_timer_context *vtimer = vcpu_vtimer(vcpu);







 kvm_timer_update_irq(vcpu, kvm_timer_should_fire(vtimer), vtimer);
 if (vtimer->irq.level)
  disable_percpu_irq(host_vtimer_irq);
 else
  enable_percpu_irq(host_vtimer_irq, host_vtimer_irq_flags);
}
