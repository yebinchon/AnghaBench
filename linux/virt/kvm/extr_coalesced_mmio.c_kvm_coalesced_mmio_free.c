
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {scalar_t__ coalesced_mmio_ring; } ;


 int free_page (unsigned long) ;

void kvm_coalesced_mmio_free(struct kvm *kvm)
{
 if (kvm->coalesced_mmio_ring)
  free_page((unsigned long)kvm->coalesced_mmio_ring);
}
