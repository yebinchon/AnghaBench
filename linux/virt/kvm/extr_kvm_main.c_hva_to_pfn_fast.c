
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int kvm_pfn_t ;


 int __get_user_pages_fast (unsigned long,int,int,struct page**) ;
 int page_to_pfn (struct page*) ;

__attribute__((used)) static bool hva_to_pfn_fast(unsigned long addr, bool write_fault,
       bool *writable, kvm_pfn_t *pfn)
{
 struct page *page[1];
 int npages;






 if (!(write_fault || writable))
  return 0;

 npages = __get_user_pages_fast(addr, 1, 1, page);
 if (npages == 1) {
  *pfn = page_to_pfn(page[0]);

  if (writable)
   *writable = 1;
  return 1;
 }

 return 0;
}
