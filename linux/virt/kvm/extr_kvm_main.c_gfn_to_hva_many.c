
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 unsigned long __gfn_to_hva_many (struct kvm_memory_slot*,int ,int *,int) ;

__attribute__((used)) static unsigned long gfn_to_hva_many(struct kvm_memory_slot *slot, gfn_t gfn,
         gfn_t *nr_pages)
{
 return __gfn_to_hva_many(slot, gfn, nr_pages, 1);
}
