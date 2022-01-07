
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 scalar_t__ PageReserved (int ) ;
 int kvm_is_zone_device_pfn (int ) ;
 int pfn_to_page (int ) ;
 scalar_t__ pfn_valid (int ) ;

bool kvm_is_reserved_pfn(kvm_pfn_t pfn)
{





 if (pfn_valid(pfn))
  return PageReserved(pfn_to_page(pfn)) &&
         !kvm_is_zone_device_pfn(pfn);

 return 1;
}
