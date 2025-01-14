
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 int clear_hyp_pgd_entry (int *) ;
 scalar_t__ hyp_pud_table_empty (int *) ;
 scalar_t__ pud_addr_end (scalar_t__,scalar_t__) ;
 int pud_none (int ) ;
 int * pud_offset (int *,scalar_t__) ;
 int unmap_hyp_pmds (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void unmap_hyp_puds(pgd_t *pgd, phys_addr_t addr, phys_addr_t end)
{
 phys_addr_t next;
 pud_t *pud, *start_pud;

 start_pud = pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);

  if (!pud_none(*pud))
   unmap_hyp_pmds(pud, addr, next);
 } while (pud++, addr = next, addr != end);

 if (hyp_pud_table_empty(start_pud))
  clear_hyp_pgd_entry(pgd);
}
