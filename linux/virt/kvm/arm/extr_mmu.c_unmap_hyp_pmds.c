
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 int clear_hyp_pud_entry (int *) ;
 scalar_t__ hyp_pmd_table_empty (int *) ;
 scalar_t__ pmd_addr_end (scalar_t__,scalar_t__) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,scalar_t__) ;
 int unmap_hyp_ptes (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void unmap_hyp_pmds(pud_t *pud, phys_addr_t addr, phys_addr_t end)
{
 phys_addr_t next;
 pmd_t *pmd, *start_pmd;

 start_pmd = pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);

  if (!pmd_none(*pmd))
   unmap_hyp_ptes(pmd, addr, next);
 } while (pmd++, addr = next, addr != end);

 if (hyp_pmd_table_empty(start_pmd))
  clear_hyp_pud_entry(pud);
}
