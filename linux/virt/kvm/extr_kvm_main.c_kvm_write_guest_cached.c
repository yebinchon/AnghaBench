
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
struct gfn_to_hva_cache {int dummy; } ;


 int kvm_write_guest_offset_cached (struct kvm*,struct gfn_to_hva_cache*,void*,int ,unsigned long) ;

int kvm_write_guest_cached(struct kvm *kvm, struct gfn_to_hva_cache *ghc,
      void *data, unsigned long len)
{
 return kvm_write_guest_offset_cached(kvm, ghc, data, 0, len);
}
