
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int stage2_ptep_test_and_clear_young (int *) ;

__attribute__((used)) static int stage2_pmdp_test_and_clear_young(pmd_t *pmd)
{
 return stage2_ptep_test_and_clear_young((pte_t *)pmd);
}
