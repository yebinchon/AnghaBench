
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int gfn_to_memslot (struct kvm*,int ) ;
 int gfn_to_pfn_memslot_atomic (int ,int ) ;

kvm_pfn_t gfn_to_pfn_atomic(struct kvm *kvm, gfn_t gfn)
{
 return gfn_to_pfn_memslot_atomic(gfn_to_memslot(kvm, gfn), gfn);
}
