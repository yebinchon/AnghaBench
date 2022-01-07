
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int hw; int * get_input_level; scalar_t__ hwintid; } ;



__attribute__((used)) static inline void kvm_vgic_unmap_irq(struct vgic_irq *irq)
{
 irq->hw = 0;
 irq->hwintid = 0;
 irq->get_input_level = ((void*)0);
}
