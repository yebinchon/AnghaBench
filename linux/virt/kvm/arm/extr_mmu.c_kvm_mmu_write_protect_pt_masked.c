
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int base_gfn; } ;
struct kvm {int dummy; } ;
typedef int phys_addr_t ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int __ffs (unsigned long) ;
 int __fls (unsigned long) ;
 int stage2_wp_range (struct kvm*,int,int) ;

__attribute__((used)) static void kvm_mmu_write_protect_pt_masked(struct kvm *kvm,
  struct kvm_memory_slot *slot,
  gfn_t gfn_offset, unsigned long mask)
{
 phys_addr_t base_gfn = slot->base_gfn + gfn_offset;
 phys_addr_t start = (base_gfn + __ffs(mask)) << PAGE_SHIFT;
 phys_addr_t end = (base_gfn + __fls(mask) + 1) << PAGE_SHIFT;

 stage2_wp_range(kvm, start, end);
}
