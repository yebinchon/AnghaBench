
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {void* owner; int config; int line_level; } ;





__attribute__((used)) static bool vgic_validate_injection(struct vgic_irq *irq, bool level, void *owner)
{
 if (irq->owner != owner)
  return 0;

 switch (irq->config) {
 case 128:
  return irq->line_level != level;
 case 129:
  return level;
 }

 return 0;
}
