
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int kvm_pfn_t ;


 unsigned int FOLL_HWPOISON ;
 unsigned int FOLL_NOWAIT ;
 unsigned int FOLL_WRITE ;
 int __get_user_pages_fast (unsigned long,int,int,struct page**) ;
 int get_user_pages_unlocked (unsigned long,int,struct page**,unsigned int) ;
 int might_sleep () ;
 int page_to_pfn (struct page*) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hva_to_pfn_slow(unsigned long addr, bool *async, bool write_fault,
      bool *writable, kvm_pfn_t *pfn)
{
 unsigned int flags = FOLL_HWPOISON;
 struct page *page;
 int npages = 0;

 might_sleep();

 if (writable)
  *writable = write_fault;

 if (write_fault)
  flags |= FOLL_WRITE;
 if (async)
  flags |= FOLL_NOWAIT;

 npages = get_user_pages_unlocked(addr, 1, &page, flags);
 if (npages != 1)
  return npages;


 if (unlikely(!write_fault) && writable) {
  struct page *wpage;

  if (__get_user_pages_fast(addr, 1, 1, &wpage) == 1) {
   *writable = 1;
   put_page(page);
   page = wpage;
  }
 }
 *pfn = page_to_pfn(page);
 return npages;
}
