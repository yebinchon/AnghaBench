
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pte_mkold (int ) ;
 scalar_t__ pte_young (int ) ;

__attribute__((used)) static int stage2_ptep_test_and_clear_young(pte_t *pte)
{
 if (pte_young(*pte)) {
  *pte = pte_mkold(*pte);
  return 1;
 }
 return 0;
}
