
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int __gfn_to_pfn_memslot (int ,int ,int,int *,int,int*) ;
 int gfn_to_memslot (struct kvm*,int ) ;

kvm_pfn_t gfn_to_pfn_prot(struct kvm *kvm, gfn_t gfn, bool write_fault,
        bool *writable)
{
 return __gfn_to_pfn_memslot(gfn_to_memslot(kvm, gfn), gfn, 0, ((void*)0),
        write_fault, writable);
}
