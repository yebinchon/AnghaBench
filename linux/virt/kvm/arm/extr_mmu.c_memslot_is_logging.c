
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int flags; scalar_t__ dirty_bitmap; } ;


 int KVM_MEM_READONLY ;

__attribute__((used)) static bool memslot_is_logging(struct kvm_memory_slot *memslot)
{
 return memslot->dirty_bitmap && !(memslot->flags & KVM_MEM_READONLY);
}
