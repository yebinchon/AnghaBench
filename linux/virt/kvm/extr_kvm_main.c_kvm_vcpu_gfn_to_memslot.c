
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* __gfn_to_memslot (int ,int ) ;
 int kvm_vcpu_memslots (struct kvm_vcpu*) ;

struct kvm_memory_slot *kvm_vcpu_gfn_to_memslot(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 return __gfn_to_memslot(kvm_vcpu_memslots(vcpu), gfn);
}
