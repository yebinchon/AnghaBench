
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gfn_t ;


 unsigned long gfn_to_hva_many (int ,int ,int *) ;
 int kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;

unsigned long kvm_vcpu_gfn_to_hva(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 return gfn_to_hva_many(kvm_vcpu_gfn_to_memslot(vcpu, gfn), gfn, ((void*)0));
}
