
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 unsigned long gfn_to_hva_memslot_prot (struct kvm_memory_slot*,int ,int*) ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,int ) ;

unsigned long gfn_to_hva_prot(struct kvm *kvm, gfn_t gfn, bool *writable)
{
 struct kvm_memory_slot *slot = gfn_to_memslot(kvm, gfn);

 return gfn_to_hva_memslot_prot(slot, gfn, writable);
}
