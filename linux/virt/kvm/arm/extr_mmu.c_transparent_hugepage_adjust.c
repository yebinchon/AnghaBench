
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef unsigned long phys_addr_t ;
typedef unsigned long kvm_pfn_t ;
typedef unsigned long gfn_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PMD_MASK ;
 int PTRS_PER_PMD ;
 int PageHuge (struct page*) ;
 scalar_t__ PageTransCompoundMap (struct page*) ;
 int VM_BUG_ON (int) ;
 int kvm_get_pfn (unsigned long) ;
 int kvm_release_pfn_clean (unsigned long) ;
 struct page* pfn_to_page (unsigned long) ;

__attribute__((used)) static bool transparent_hugepage_adjust(kvm_pfn_t *pfnp, phys_addr_t *ipap)
{
 kvm_pfn_t pfn = *pfnp;
 gfn_t gfn = *ipap >> PAGE_SHIFT;
 struct page *page = pfn_to_page(pfn);






 if (!PageHuge(page) && PageTransCompoundMap(page)) {
  unsigned long mask;
  mask = PTRS_PER_PMD - 1;
  VM_BUG_ON((gfn & mask) != (pfn & mask));
  if (pfn & mask) {
   *ipap &= PMD_MASK;
   kvm_release_pfn_clean(pfn);
   pfn &= ~mask;
   kvm_get_pfn(pfn);
   *pfnp = pfn;
  }

  return 1;
 }

 return 0;
}
