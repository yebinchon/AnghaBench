
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int gfn_to_pfn (struct kvm*,int ) ;
 struct page* kvm_pfn_to_page (int ) ;

struct page *gfn_to_page(struct kvm *kvm, gfn_t gfn)
{
 kvm_pfn_t pfn;

 pfn = gfn_to_pfn(kvm, gfn);

 return kvm_pfn_to_page(pfn);
}
