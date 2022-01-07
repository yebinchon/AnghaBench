
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 int get_page (int ) ;
 int kvm_is_reserved_pfn (int ) ;
 int pfn_to_page (int ) ;

void kvm_get_pfn(kvm_pfn_t pfn)
{
 if (!kvm_is_reserved_pfn(pfn))
  get_page(pfn_to_page(pfn));
}
