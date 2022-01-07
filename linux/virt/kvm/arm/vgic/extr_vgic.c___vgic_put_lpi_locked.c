
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_irq {int lpi_list; int refcount; } ;
struct vgic_dist {int lpi_list_count; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;


 int kfree (struct vgic_irq*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int vgic_irq_release ;

void __vgic_put_lpi_locked(struct kvm *kvm, struct vgic_irq *irq)
{
 struct vgic_dist *dist = &kvm->arch.vgic;

 if (!kref_put(&irq->refcount, vgic_irq_release))
  return;

 list_del(&irq->lpi_list);
 dist->lpi_list_count--;

 kfree(irq);
}
