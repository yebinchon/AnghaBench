
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_timer_context {int host_timer_irq; } ;


 int IRQCHIP_STATE_ACTIVE ;
 int WARN_ON (int) ;
 int irq_set_irqchip_state (int ,int ,int) ;

__attribute__((used)) static inline void set_timer_irq_phys_active(struct arch_timer_context *ctx, bool active)
{
 int r;
 r = irq_set_irqchip_state(ctx->host_timer_irq, IRQCHIP_STATE_ACTIVE, active);
 WARN_ON(r);
}
