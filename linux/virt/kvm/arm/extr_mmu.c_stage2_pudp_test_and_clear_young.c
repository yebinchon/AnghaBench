
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;


 int stage2_ptep_test_and_clear_young (int *) ;

__attribute__((used)) static int stage2_pudp_test_and_clear_young(pud_t *pud)
{
 return stage2_ptep_test_and_clear_young((pte_t *)pud);
}
