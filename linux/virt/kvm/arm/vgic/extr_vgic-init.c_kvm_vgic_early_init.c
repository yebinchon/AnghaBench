
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_dist {int lpi_list_lock; int lpi_translation_cache; int lpi_list_head; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;


 int INIT_LIST_HEAD (int *) ;
 int raw_spin_lock_init (int *) ;

void kvm_vgic_early_init(struct kvm *kvm)
{
 struct vgic_dist *dist = &kvm->arch.vgic;

 INIT_LIST_HEAD(&dist->lpi_list_head);
 INIT_LIST_HEAD(&dist->lpi_translation_cache);
 raw_spin_lock_init(&dist->lpi_list_lock);
}
