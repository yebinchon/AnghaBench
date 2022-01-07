
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_translation_cache_entry {int entry; } ;
struct vgic_dist {int lpi_translation_cache; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {int online_vcpus; TYPE_1__ arch; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int LPI_DEFAULT_PCPU_CACHE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 unsigned int atomic_read (int *) ;
 struct vgic_translation_cache_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;

void vgic_lpi_translation_cache_init(struct kvm *kvm)
{
 struct vgic_dist *dist = &kvm->arch.vgic;
 unsigned int sz;
 int i;

 if (!list_empty(&dist->lpi_translation_cache))
  return;

 sz = atomic_read(&kvm->online_vcpus) * LPI_DEFAULT_PCPU_CACHE_SIZE;

 for (i = 0; i < sz; i++) {
  struct vgic_translation_cache_entry *cte;


  cte = kzalloc(sizeof(*cte), GFP_KERNEL);
  if (WARN_ON(!cte))
   break;

  INIT_LIST_HEAD(&cte->entry);
  list_add(&cte->entry, &dist->lpi_translation_cache);
 }
}
