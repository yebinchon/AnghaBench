
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;
 int mark_page_dirty_in_slot (struct kvm_memory_slot*,int ) ;

void kvm_vcpu_mark_page_dirty(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 struct kvm_memory_slot *memslot;

 memslot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
 mark_page_dirty_in_slot(memslot, gfn);
}
