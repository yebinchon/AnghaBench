
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {scalar_t__ config; int pending_latch; scalar_t__ line_level; } ;


 scalar_t__ VGIC_CONFIG_EDGE ;

__attribute__((used)) static inline bool irq_is_pending(struct vgic_irq *irq)
{
 if (irq->config == VGIC_CONFIG_EDGE)
  return irq->pending_latch;
 else
  return irq->pending_latch || irq->line_level;
}
