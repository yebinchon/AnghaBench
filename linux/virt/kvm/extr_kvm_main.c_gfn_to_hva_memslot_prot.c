
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
typedef int gfn_t ;


 unsigned long __gfn_to_hva_many (struct kvm_memory_slot*,int ,int *,int) ;
 int kvm_is_error_hva (unsigned long) ;
 int memslot_is_readonly (struct kvm_memory_slot*) ;

unsigned long gfn_to_hva_memslot_prot(struct kvm_memory_slot *slot,
          gfn_t gfn, bool *writable)
{
 unsigned long hva = __gfn_to_hva_many(slot, gfn, ((void*)0), 0);

 if (!kvm_is_error_hva(hva) && writable)
  *writable = !memslot_is_readonly(slot);

 return hva;
}
