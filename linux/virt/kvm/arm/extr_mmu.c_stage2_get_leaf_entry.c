
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 scalar_t__ pmd_none (int ) ;
 int pmd_present (int ) ;
 scalar_t__ pmd_thp_or_huge (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_kernel (int *,int ) ;
 int pte_present (int ) ;
 int * stage2_get_pud (struct kvm*,int *,int ) ;
 int * stage2_pmd_offset (struct kvm*,int *,int ) ;
 scalar_t__ stage2_pud_huge (struct kvm*,int ) ;
 scalar_t__ stage2_pud_none (struct kvm*,int ) ;
 int stage2_pud_present (struct kvm*,int ) ;

__attribute__((used)) static bool stage2_get_leaf_entry(struct kvm *kvm, phys_addr_t addr,
      pud_t **pudpp, pmd_t **pmdpp, pte_t **ptepp)
{
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;

 *pudpp = ((void*)0);
 *pmdpp = ((void*)0);
 *ptepp = ((void*)0);

 pudp = stage2_get_pud(kvm, ((void*)0), addr);
 if (!pudp || stage2_pud_none(kvm, *pudp) || !stage2_pud_present(kvm, *pudp))
  return 0;

 if (stage2_pud_huge(kvm, *pudp)) {
  *pudpp = pudp;
  return 1;
 }

 pmdp = stage2_pmd_offset(kvm, pudp, addr);
 if (!pmdp || pmd_none(*pmdp) || !pmd_present(*pmdp))
  return 0;

 if (pmd_thp_or_huge(*pmdp)) {
  *pmdpp = pmdp;
  return 1;
 }

 ptep = pte_offset_kernel(pmdp, addr);
 if (!ptep || pte_none(*ptep) || !pte_present(*ptep))
  return 0;

 *ptepp = ptep;
 return 1;
}
