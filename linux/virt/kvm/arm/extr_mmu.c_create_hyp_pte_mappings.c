
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int PAGE_SIZE ;
 int get_page (int ) ;
 int kvm_pfn_pte (unsigned long,int ) ;
 int kvm_set_pte (int *,int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void create_hyp_pte_mappings(pmd_t *pmd, unsigned long start,
        unsigned long end, unsigned long pfn,
        pgprot_t prot)
{
 pte_t *pte;
 unsigned long addr;

 addr = start;
 do {
  pte = pte_offset_kernel(pmd, addr);
  kvm_set_pte(pte, kvm_pfn_pte(pfn, prot));
  get_page(virt_to_page(pte));
  pfn++;
 } while (addr += PAGE_SIZE, addr != end);
}
