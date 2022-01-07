
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 int __kvm_write_guest_page (struct kvm_memory_slot*,int ,void const*,int,int) ;
 struct kvm_memory_slot* kvm_vcpu_gfn_to_memslot (struct kvm_vcpu*,int ) ;

int kvm_vcpu_write_guest_page(struct kvm_vcpu *vcpu, gfn_t gfn,
         const void *data, int offset, int len)
{
 struct kvm_memory_slot *slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);

 return __kvm_write_guest_page(slot, gfn, data, offset, len);
}
