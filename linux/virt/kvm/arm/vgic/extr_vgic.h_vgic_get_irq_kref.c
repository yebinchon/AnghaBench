
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {scalar_t__ intid; int refcount; } ;


 scalar_t__ VGIC_MIN_LPI ;
 int kref_get (int *) ;

__attribute__((used)) static inline void vgic_get_irq_kref(struct vgic_irq *irq)
{
 if (irq->intid < VGIC_MIN_LPI)
  return;

 kref_get(&irq->refcount);
}
