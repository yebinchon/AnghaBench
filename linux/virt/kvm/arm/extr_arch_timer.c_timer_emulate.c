
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; } ;
struct arch_timer_context {int hrtimer; int vcpu; TYPE_1__ irq; } ;


 int kvm_timer_compute_delta (struct arch_timer_context*) ;
 int kvm_timer_irq_can_fire (struct arch_timer_context*) ;
 int kvm_timer_should_fire (struct arch_timer_context*) ;
 int kvm_timer_update_irq (int ,int,struct arch_timer_context*) ;
 int soft_timer_cancel (int *) ;
 int soft_timer_start (int *,int ) ;
 int trace_kvm_timer_emulate (struct arch_timer_context*,int) ;

__attribute__((used)) static void timer_emulate(struct arch_timer_context *ctx)
{
 bool should_fire = kvm_timer_should_fire(ctx);

 trace_kvm_timer_emulate(ctx, should_fire);

 if (should_fire != ctx->irq.level) {
  kvm_timer_update_irq(ctx->vcpu, should_fire, ctx);
  return;
 }






 if (!kvm_timer_irq_can_fire(ctx)) {
  soft_timer_cancel(&ctx->hrtimer);
  return;
 }

 soft_timer_start(&ctx->hrtimer, kvm_timer_compute_delta(ctx));
}
