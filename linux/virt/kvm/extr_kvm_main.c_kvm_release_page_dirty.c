
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int WARN_ON (int ) ;
 int is_error_page (struct page*) ;
 int kvm_release_pfn_dirty (int ) ;
 int page_to_pfn (struct page*) ;

void kvm_release_page_dirty(struct page *page)
{
 WARN_ON(is_error_page(page));

 kvm_release_pfn_dirty(page_to_pfn(page));
}
