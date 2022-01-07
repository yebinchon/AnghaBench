
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int __gfn_to_pfn_memslot (struct kvm_memory_slot*,int ,int,int *,int,int *) ;

kvm_pfn_t gfn_to_pfn_memslot_atomic(struct kvm_memory_slot *slot, gfn_t gfn)
{
 return __gfn_to_pfn_memslot(slot, gfn, 1, ((void*)0), 1, ((void*)0));
}
