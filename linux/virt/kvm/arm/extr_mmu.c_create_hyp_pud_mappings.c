
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 int create_hyp_pmd_mappings (int *,unsigned long,unsigned long,unsigned long,int ) ;
 int get_page (int ) ;
 int kvm_err (char*) ;
 int kvm_pud_populate (int *,int *) ;
 int * pmd_alloc_one (int *,unsigned long) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int virt_to_page (int *) ;

__attribute__((used)) static int create_hyp_pud_mappings(pgd_t *pgd, unsigned long start,
       unsigned long end, unsigned long pfn,
       pgprot_t prot)
{
 pud_t *pud;
 pmd_t *pmd;
 unsigned long addr, next;
 int ret;

 addr = start;
 do {
  pud = pud_offset(pgd, addr);

  if (pud_none_or_clear_bad(pud)) {
   pmd = pmd_alloc_one(((void*)0), addr);
   if (!pmd) {
    kvm_err("Cannot allocate Hyp pmd\n");
    return -ENOMEM;
   }
   kvm_pud_populate(pud, pmd);
   get_page(virt_to_page(pud));
  }

  next = pud_addr_end(addr, end);
  ret = create_hyp_pmd_mappings(pud, addr, next, pfn, prot);
  if (ret)
   return ret;
  pfn += (next - addr) >> PAGE_SHIFT;
 } while (addr = next, addr != end);

 return 0;
}
