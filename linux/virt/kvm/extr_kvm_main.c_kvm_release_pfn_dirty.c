
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 int kvm_release_pfn_clean (int ) ;
 int kvm_set_pfn_dirty (int ) ;

void kvm_release_pfn_dirty(kvm_pfn_t pfn)
{
 kvm_set_pfn_dirty(pfn);
 kvm_release_pfn_clean(pfn);
}
