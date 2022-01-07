
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 unsigned long KVM_HVA_ERR_RO_BAD ;
 int KVM_PFN_ERR_RO_FAULT ;
 int KVM_PFN_NOSLOT ;
 unsigned long __gfn_to_hva_many (struct kvm_memory_slot*,int ,int *,int) ;
 int hva_to_pfn (unsigned long,int,int*,int,int*) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 scalar_t__ memslot_is_readonly (struct kvm_memory_slot*) ;

kvm_pfn_t __gfn_to_pfn_memslot(struct kvm_memory_slot *slot, gfn_t gfn,
          bool atomic, bool *async, bool write_fault,
          bool *writable)
{
 unsigned long addr = __gfn_to_hva_many(slot, gfn, ((void*)0), write_fault);

 if (addr == KVM_HVA_ERR_RO_BAD) {
  if (writable)
   *writable = 0;
  return KVM_PFN_ERR_RO_FAULT;
 }

 if (kvm_is_error_hva(addr)) {
  if (writable)
   *writable = 0;
  return KVM_PFN_NOSLOT;
 }


 if (writable && memslot_is_readonly(slot)) {
  *writable = 0;
  writable = ((void*)0);
 }

 return hva_to_pfn(addr, atomic, async, write_fault,
     writable);
}
