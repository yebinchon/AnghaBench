
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {scalar_t__ base_gfn; int npages; } ;
struct TYPE_2__ {int * pgd; } ;
struct kvm {TYPE_1__ arch; } ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int stage2_flush_puds (struct kvm*,int *,scalar_t__,scalar_t__) ;
 scalar_t__ stage2_pgd_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 int stage2_pgd_index (struct kvm*,scalar_t__) ;
 int stage2_pgd_none (struct kvm*,int ) ;

__attribute__((used)) static void stage2_flush_memslot(struct kvm *kvm,
     struct kvm_memory_slot *memslot)
{
 phys_addr_t addr = memslot->base_gfn << PAGE_SHIFT;
 phys_addr_t end = addr + PAGE_SIZE * memslot->npages;
 phys_addr_t next;
 pgd_t *pgd;

 pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
 do {
  next = stage2_pgd_addr_end(kvm, addr, end);
  if (!stage2_pgd_none(kvm, *pgd))
   stage2_flush_puds(kvm, pgd, addr, next);
 } while (pgd++, addr = next, addr != end);
}
