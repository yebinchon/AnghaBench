
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 int is_error_noslot_pfn (int ) ;
 int kvm_is_reserved_pfn (int ) ;
 int pfn_to_page (int ) ;
 int put_page (int ) ;

void kvm_release_pfn_clean(kvm_pfn_t pfn)
{
 if (!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn))
  put_page(pfn_to_page(pfn));
}
