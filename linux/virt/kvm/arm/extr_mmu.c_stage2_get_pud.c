
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_2__ {int * pgd; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int pud_t ;
typedef int phys_addr_t ;
typedef int pgd_t ;


 int get_page (int ) ;
 int * mmu_memory_cache_alloc (struct kvm_mmu_memory_cache*) ;
 int stage2_pgd_index (struct kvm*,int ) ;
 scalar_t__ stage2_pgd_none (struct kvm*,int ) ;
 int stage2_pgd_populate (struct kvm*,int *,int *) ;
 int * stage2_pud_offset (struct kvm*,int *,int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static pud_t *stage2_get_pud(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
        phys_addr_t addr)
{
 pgd_t *pgd;
 pud_t *pud;

 pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
 if (stage2_pgd_none(kvm, *pgd)) {
  if (!cache)
   return ((void*)0);
  pud = mmu_memory_cache_alloc(cache);
  stage2_pgd_populate(kvm, pgd, pud);
  get_page(virt_to_page(pgd));
 }

 return stage2_pud_offset(kvm, pgd, addr);
}
