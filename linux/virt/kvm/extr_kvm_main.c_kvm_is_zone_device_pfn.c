
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int is_zone_device_page (int ) ;
 int page_count (int ) ;
 int pfn_to_page (int ) ;
 int pfn_valid (int ) ;

bool kvm_is_zone_device_pfn(kvm_pfn_t pfn)
{






 if (!pfn_valid(pfn) || WARN_ON_ONCE(!page_count(pfn_to_page(pfn))))
  return 0;

 return is_zone_device_page(pfn_to_page(pfn));
}
