
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {scalar_t__ config; scalar_t__ hw; } ;


 scalar_t__ VGIC_CONFIG_LEVEL ;

__attribute__((used)) static inline bool vgic_irq_is_mapped_level(struct vgic_irq *irq)
{
 return irq->config == VGIC_CONFIG_LEVEL && irq->hw;
}
