
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int * pgd; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 int PAGE_MASK ;
 int READ_ONCE (int *) ;
 int WARN_ON (int) ;
 int assert_spin_locked (int *) ;
 int cond_resched_lock (int *) ;
 scalar_t__ stage2_pgd_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 int stage2_pgd_index (struct kvm*,scalar_t__) ;
 int stage2_pgd_none (struct kvm*,int ) ;
 int unmap_stage2_puds (struct kvm*,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void unmap_stage2_range(struct kvm *kvm, phys_addr_t start, u64 size)
{
 pgd_t *pgd;
 phys_addr_t addr = start, end = start + size;
 phys_addr_t next;

 assert_spin_locked(&kvm->mmu_lock);
 WARN_ON(size & ~PAGE_MASK);

 pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
 do {





  if (!READ_ONCE(kvm->arch.pgd))
   break;
  next = stage2_pgd_addr_end(kvm, addr, end);
  if (!stage2_pgd_none(kvm, *pgd))
   unmap_stage2_puds(kvm, pgd, addr, next);




  if (next != end)
   cond_resched_lock(&kvm->mmu_lock);
 } while (pgd++, addr = next, addr != end);
}
