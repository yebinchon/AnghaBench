
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_map {struct arch_timer_context* direct_ptimer; struct arch_timer_context* direct_vtimer; } ;
struct kvm_vcpu {int kvm; } ;
struct arch_timer_context {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_percpu_irq (int) ;
 int get_timer_map (struct kvm_vcpu*,struct timer_map*) ;
 int has_gic_active_state ;
 int host_vtimer_irq ;
 scalar_t__ kvm_timer_should_fire (struct arch_timer_context*) ;
 int kvm_timer_update_irq (struct kvm_vcpu*,int,struct arch_timer_context*) ;
 int static_branch_unlikely (int *) ;
 scalar_t__ userspace_irqchip (int ) ;

__attribute__((used)) static irqreturn_t kvm_arch_timer_handler(int irq, void *dev_id)
{
 struct kvm_vcpu *vcpu = *(struct kvm_vcpu **)dev_id;
 struct arch_timer_context *ctx;
 struct timer_map map;







 if (!vcpu)
  return IRQ_HANDLED;

 get_timer_map(vcpu, &map);

 if (irq == host_vtimer_irq)
  ctx = map.direct_vtimer;
 else
  ctx = map.direct_ptimer;

 if (kvm_timer_should_fire(ctx))
  kvm_timer_update_irq(vcpu, 1, ctx);

 if (userspace_irqchip(vcpu->kvm) &&
     !static_branch_unlikely(&has_gic_active_state))
  disable_percpu_irq(host_vtimer_irq);

 return IRQ_HANDLED;
}
