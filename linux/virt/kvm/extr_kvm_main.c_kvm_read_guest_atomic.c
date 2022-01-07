
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int __kvm_read_guest_atomic (struct kvm_memory_slot*,int,void*,int,unsigned long) ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,int) ;
 int offset_in_page (int) ;

int kvm_read_guest_atomic(struct kvm *kvm, gpa_t gpa, void *data,
     unsigned long len)
{
 gfn_t gfn = gpa >> PAGE_SHIFT;
 struct kvm_memory_slot *slot = gfn_to_memslot(kvm, gfn);
 int offset = offset_in_page(gpa);

 return __kvm_read_guest_atomic(slot, gfn, data, offset, len);
}
