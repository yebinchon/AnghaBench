
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int kvm_pfn_t ;


 int SetPageDirty (struct page*) ;
 int kvm_is_reserved_pfn (int ) ;
 int kvm_is_zone_device_pfn (int ) ;
 struct page* pfn_to_page (int ) ;

void kvm_set_pfn_dirty(kvm_pfn_t pfn)
{
 if (!kvm_is_reserved_pfn(pfn) && !kvm_is_zone_device_pfn(pfn)) {
  struct page *page = pfn_to_page(pfn);

  SetPageDirty(page);
 }
}
