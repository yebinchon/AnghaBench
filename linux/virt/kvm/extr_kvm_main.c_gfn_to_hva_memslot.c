
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 unsigned long gfn_to_hva_many (struct kvm_memory_slot*,int ,int *) ;

unsigned long gfn_to_hva_memslot(struct kvm_memory_slot *slot,
     gfn_t gfn)
{
 return gfn_to_hva_many(slot, gfn, ((void*)0));
}
