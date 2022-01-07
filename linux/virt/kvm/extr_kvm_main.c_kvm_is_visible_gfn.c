
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {scalar_t__ id; int flags; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 int KVM_MEMSLOT_INVALID ;
 scalar_t__ KVM_USER_MEM_SLOTS ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,int ) ;

bool kvm_is_visible_gfn(struct kvm *kvm, gfn_t gfn)
{
 struct kvm_memory_slot *memslot = gfn_to_memslot(kvm, gfn);

 if (!memslot || memslot->id >= KVM_USER_MEM_SLOTS ||
       memslot->flags & KVM_MEMSLOT_INVALID)
  return 0;

 return 1;
}
