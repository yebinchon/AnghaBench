
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int gpa_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ PMD_SIZE ;
 scalar_t__ PUD_SIZE ;
 int WARN_ON (int) ;
 int kvm_s2pud_young (int ) ;
 int pmd_young (int ) ;
 int pte_young (int ) ;
 int stage2_get_leaf_entry (struct kvm*,int ,int **,int **,int **) ;

__attribute__((used)) static int kvm_test_age_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *data)
{
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 WARN_ON(size != PAGE_SIZE && size != PMD_SIZE && size != PUD_SIZE);
 if (!stage2_get_leaf_entry(kvm, gpa, &pud, &pmd, &pte))
  return 0;

 if (pud)
  return kvm_s2pud_young(*pud);
 else if (pmd)
  return pmd_young(*pmd);
 else
  return pte_young(*pte);
}
