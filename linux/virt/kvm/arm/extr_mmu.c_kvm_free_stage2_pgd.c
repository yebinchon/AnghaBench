
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pgd_phys; int * pgd; } ;
struct kvm {int mmu_lock; TYPE_1__ arch; } ;


 void* READ_ONCE (int *) ;
 int free_pages_exact (void*,int ) ;
 int kvm_phys_size (struct kvm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stage2_pgd_size (struct kvm*) ;
 int unmap_stage2_range (struct kvm*,int ,int ) ;

void kvm_free_stage2_pgd(struct kvm *kvm)
{
 void *pgd = ((void*)0);

 spin_lock(&kvm->mmu_lock);
 if (kvm->arch.pgd) {
  unmap_stage2_range(kvm, 0, kvm_phys_size(kvm));
  pgd = READ_ONCE(kvm->arch.pgd);
  kvm->arch.pgd = ((void*)0);
  kvm->arch.pgd_phys = 0;
 }
 spin_unlock(&kvm->mmu_lock);


 if (pgd)
  free_pages_exact(pgd, stage2_pgd_size(kvm));
}
