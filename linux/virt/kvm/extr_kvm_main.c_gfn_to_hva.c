
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int gfn_t ;


 unsigned long gfn_to_hva_many (int ,int ,int *) ;
 int gfn_to_memslot (struct kvm*,int ) ;

unsigned long gfn_to_hva(struct kvm *kvm, gfn_t gfn)
{
 return gfn_to_hva_many(gfn_to_memslot(kvm, gfn), gfn, ((void*)0));
}
