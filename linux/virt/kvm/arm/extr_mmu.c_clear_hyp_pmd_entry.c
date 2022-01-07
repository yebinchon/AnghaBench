
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int VM_BUG_ON (int ) ;
 int pmd_clear (int *) ;
 int pmd_thp_or_huge (int ) ;
 int pte_free_kernel (int *,int *) ;
 int * pte_offset_kernel (int *,int ) ;
 int put_page (int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void clear_hyp_pmd_entry(pmd_t *pmd)
{
 pte_t *pte_table = pte_offset_kernel(pmd, 0);
 VM_BUG_ON(pmd_thp_or_huge(*pmd));
 pmd_clear(pmd);
 pte_free_kernel(((void*)0), pte_table);
 put_page(virt_to_page(pmd));
}
