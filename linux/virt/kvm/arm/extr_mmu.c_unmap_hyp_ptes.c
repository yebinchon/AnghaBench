
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ PAGE_SIZE ;
 int __pte (int ) ;
 int clear_hyp_pmd_entry (int *) ;
 scalar_t__ hyp_pte_table_empty (int *) ;
 int kvm_set_pte (int *,int ) ;
 int pte_none (int ) ;
 int * pte_offset_kernel (int *,scalar_t__) ;
 int put_page (int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void unmap_hyp_ptes(pmd_t *pmd, phys_addr_t addr, phys_addr_t end)
{
 pte_t *pte, *start_pte;

 start_pte = pte = pte_offset_kernel(pmd, addr);
 do {
  if (!pte_none(*pte)) {
   kvm_set_pte(pte, __pte(0));
   put_page(virt_to_page(pte));
  }
 } while (pte++, addr += PAGE_SIZE, addr != end);

 if (hyp_pte_table_empty(start_pte))
  clear_hyp_pmd_entry(pmd);
}
