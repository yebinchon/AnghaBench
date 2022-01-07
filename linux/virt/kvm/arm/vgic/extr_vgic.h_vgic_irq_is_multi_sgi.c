
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int dummy; } ;


 int vgic_irq_get_lr_count (struct vgic_irq*) ;

__attribute__((used)) static inline bool vgic_irq_is_multi_sgi(struct vgic_irq *irq)
{
 return vgic_irq_get_lr_count(irq) > 1;
}
