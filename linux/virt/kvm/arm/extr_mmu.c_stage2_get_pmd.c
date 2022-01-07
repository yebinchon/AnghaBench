
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int dummy; } ;
struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int get_page (int ) ;
 int * mmu_memory_cache_alloc (struct kvm_mmu_memory_cache*) ;
 int * stage2_get_pud (struct kvm*,struct kvm_mmu_memory_cache*,int ) ;
 int * stage2_pmd_offset (struct kvm*,int *,int ) ;
 scalar_t__ stage2_pud_huge (struct kvm*,int ) ;
 scalar_t__ stage2_pud_none (struct kvm*,int ) ;
 int stage2_pud_populate (struct kvm*,int *,int *) ;
 int virt_to_page (int *) ;

__attribute__((used)) static pmd_t *stage2_get_pmd(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
        phys_addr_t addr)
{
 pud_t *pud;
 pmd_t *pmd;

 pud = stage2_get_pud(kvm, cache, addr);
 if (!pud || stage2_pud_huge(kvm, *pud))
  return ((void*)0);

 if (stage2_pud_none(kvm, *pud)) {
  if (!cache)
   return ((void*)0);
  pmd = mmu_memory_cache_alloc(cache);
  stage2_pud_populate(kvm, pud, pmd);
  get_page(virt_to_page(pud));
 }

 return stage2_pmd_offset(kvm, pud, addr);
}
