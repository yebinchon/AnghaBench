
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 struct page* kvm_pfn_to_page (int ) ;
 int kvm_vcpu_gfn_to_pfn (struct kvm_vcpu*,int ) ;

struct page *kvm_vcpu_gfn_to_page(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 kvm_pfn_t pfn;

 pfn = kvm_vcpu_gfn_to_pfn(vcpu, gfn);

 return kvm_pfn_to_page(pfn);
}
