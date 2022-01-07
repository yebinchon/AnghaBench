
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,int ) ;
 int mark_page_dirty_in_slot (struct kvm_memory_slot*,int ) ;

void mark_page_dirty(struct kvm *kvm, gfn_t gfn)
{
 struct kvm_memory_slot *memslot;

 memslot = gfn_to_memslot(kvm, gfn);
 mark_page_dirty_in_slot(memslot, gfn);
}
