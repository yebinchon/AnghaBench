
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int base_gfn; int npages; } ;
struct kvm {int mmu_lock; } ;
typedef int phys_addr_t ;


 int PAGE_SHIFT ;
 struct kvm_memory_slot* id_to_memslot (struct kvm_memslots*,int) ;
 int kvm_flush_remote_tlbs (struct kvm*) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stage2_wp_range (struct kvm*,int,int) ;

void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
{
 struct kvm_memslots *slots = kvm_memslots(kvm);
 struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
 phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
 phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;

 spin_lock(&kvm->mmu_lock);
 stage2_wp_range(kvm, start, end);
 spin_unlock(&kvm->mmu_lock);
 kvm_flush_remote_tlbs(kvm);
}
