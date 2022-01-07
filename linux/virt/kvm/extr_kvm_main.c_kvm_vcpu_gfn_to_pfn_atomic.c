
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int gfn_to_pfn_memslot_atomic (int ,int ) ;
 int kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;

kvm_pfn_t kvm_vcpu_gfn_to_pfn_atomic(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 return gfn_to_pfn_memslot_atomic(kvm_vcpu_gfn_to_memslot(vcpu, gfn), gfn);
}
