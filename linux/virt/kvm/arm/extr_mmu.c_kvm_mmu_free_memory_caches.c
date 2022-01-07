
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmu_page_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int mmu_free_memory_cache (int *) ;

void kvm_mmu_free_memory_caches(struct kvm_vcpu *vcpu)
{
 mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
}
