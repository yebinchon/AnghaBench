
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct its_ite {TYPE_1__* irq; int ite_list; } ;
struct TYPE_2__ {int host_irq; scalar_t__ hw; } ;


 int WARN_ON (int ) ;
 int its_unmap_vlpi (int ) ;
 int kfree (struct its_ite*) ;
 int list_del (int *) ;
 int vgic_put_irq (struct kvm*,TYPE_1__*) ;

__attribute__((used)) static void its_free_ite(struct kvm *kvm, struct its_ite *ite)
{
 list_del(&ite->ite_list);


 if (ite->irq) {
  if (ite->irq->hw)
   WARN_ON(its_unmap_vlpi(ite->irq->host_irq));

  vgic_put_irq(kvm, ite->irq);
 }

 kfree(ite);
}
