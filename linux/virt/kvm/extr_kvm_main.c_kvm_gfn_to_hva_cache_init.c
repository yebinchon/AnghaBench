
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int dummy; } ;
struct kvm {int dummy; } ;
struct gfn_to_hva_cache {int dummy; } ;
typedef int gpa_t ;


 int __kvm_gfn_to_hva_cache_init (struct kvm_memslots*,struct gfn_to_hva_cache*,int ,unsigned long) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;

int kvm_gfn_to_hva_cache_init(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
         gpa_t gpa, unsigned long len)
{
 struct kvm_memslots *slots = kvm_memslots(kvm);
 return __kvm_gfn_to_hva_cache_init(slots, ghc, gpa, len);
}
