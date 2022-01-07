
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 int kvm_is_reserved_pfn (int ) ;
 int kvm_is_zone_device_pfn (int ) ;
 int mark_page_accessed (int ) ;
 int pfn_to_page (int ) ;

void kvm_set_pfn_accessed(kvm_pfn_t pfn)
{
 if (!kvm_is_reserved_pfn(pfn) && !kvm_is_zone_device_pfn(pfn))
  mark_page_accessed(pfn_to_page(pfn));
}
