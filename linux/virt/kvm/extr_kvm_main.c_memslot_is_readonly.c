
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int flags; } ;


 int KVM_MEM_READONLY ;

__attribute__((used)) static bool memslot_is_readonly(struct kvm_memory_slot *slot)
{
 return slot->flags & KVM_MEM_READONLY;
}
