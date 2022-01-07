
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int create_hyp_pte_mappings (int *,unsigned long,unsigned long,unsigned long,int ) ;
 int get_page (int ) ;
 int kvm_err (char*) ;
 int kvm_pmd_populate (int *,int *) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_sect (int ) ;
 int * pte_alloc_one_kernel (int *) ;
 int virt_to_page (int *) ;

__attribute__((used)) static int create_hyp_pmd_mappings(pud_t *pud, unsigned long start,
       unsigned long end, unsigned long pfn,
       pgprot_t prot)
{
 pmd_t *pmd;
 pte_t *pte;
 unsigned long addr, next;

 addr = start;
 do {
  pmd = pmd_offset(pud, addr);

  BUG_ON(pmd_sect(*pmd));

  if (pmd_none(*pmd)) {
   pte = pte_alloc_one_kernel(((void*)0));
   if (!pte) {
    kvm_err("Cannot allocate Hyp pte\n");
    return -ENOMEM;
   }
   kvm_pmd_populate(pmd, pte);
   get_page(virt_to_page(pmd));
  }

  next = pmd_addr_end(addr, end);

  create_hyp_pte_mappings(pmd, addr, next, pfn, prot);
  pfn += (next - addr) >> PAGE_SHIFT;
 } while (addr = next, addr != end);

 return 0;
}
