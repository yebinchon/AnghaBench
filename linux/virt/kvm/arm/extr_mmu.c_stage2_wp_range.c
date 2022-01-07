
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pgd; } ;
struct kvm {TYPE_1__ arch; int mmu_lock; } ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 int READ_ONCE (int *) ;
 int cond_resched_lock (int *) ;
 scalar_t__ stage2_pgd_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 int stage2_pgd_index (struct kvm*,scalar_t__) ;
 scalar_t__ stage2_pgd_present (struct kvm*,int ) ;
 int stage2_wp_puds (struct kvm*,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
{
 pgd_t *pgd;
 phys_addr_t next;

 pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
 do {
  cond_resched_lock(&kvm->mmu_lock);
  if (!READ_ONCE(kvm->arch.pgd))
   break;
  next = stage2_pgd_addr_end(kvm, addr, end);
  if (stage2_pgd_present(kvm, *pgd))
   stage2_wp_puds(kvm, pgd, addr, next);
 } while (pgd++, addr = next, addr != end);
}
