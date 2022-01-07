
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int kvm_pfn_t ;


 struct page* KVM_ERR_PTR_BAD_PAGE ;
 int WARN_ON (int) ;
 scalar_t__ is_error_noslot_pfn (int ) ;
 scalar_t__ kvm_is_reserved_pfn (int ) ;
 struct page* pfn_to_page (int ) ;

__attribute__((used)) static struct page *kvm_pfn_to_page(kvm_pfn_t pfn)
{
 if (is_error_noslot_pfn(pfn))
  return KVM_ERR_PTR_BAD_PAGE;

 if (kvm_is_reserved_pfn(pfn)) {
  WARN_ON(1);
  return KVM_ERR_PTR_BAD_PAGE;
 }

 return pfn_to_page(pfn);
}
