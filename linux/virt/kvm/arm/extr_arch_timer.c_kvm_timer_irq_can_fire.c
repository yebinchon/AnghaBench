
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_timer_context {int cnt_ctl; scalar_t__ loaded; } ;


 int ARCH_TIMER_CTRL_ENABLE ;
 int ARCH_TIMER_CTRL_IT_MASK ;
 int WARN_ON (int) ;

__attribute__((used)) static bool kvm_timer_irq_can_fire(struct arch_timer_context *timer_ctx)
{
 WARN_ON(timer_ctx && timer_ctx->loaded);
 return timer_ctx &&
        !(timer_ctx->cnt_ctl & ARCH_TIMER_CTRL_IT_MASK) &&
  (timer_ctx->cnt_ctl & ARCH_TIMER_CTRL_ENABLE);
}
