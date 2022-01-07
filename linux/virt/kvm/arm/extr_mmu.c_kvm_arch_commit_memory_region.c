
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int flags; int slot; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;


 int KVM_MEM_LOG_DIRTY_PAGES ;
 int KVM_MR_DELETE ;
 int kvm_mmu_wp_memory_region (struct kvm*,int ) ;

void kvm_arch_commit_memory_region(struct kvm *kvm,
       const struct kvm_userspace_memory_region *mem,
       const struct kvm_memory_slot *old,
       const struct kvm_memory_slot *new,
       enum kvm_mr_change change)
{





 if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
  kvm_mmu_wp_memory_region(kvm, mem->slot);
}
