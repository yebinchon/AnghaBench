
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;
typedef int kvm_pfn_t ;
struct TYPE_2__ {int mmu_lock; } ;


 int kvm_pud_pfn (int ) ;
 int kvm_s2pud_mkyoung (int ) ;
 int kvm_set_pfn_accessed (int ) ;
 int pmd_mkyoung (int ) ;
 int pmd_pfn (int ) ;
 int pte_mkyoung (int ) ;
 int pte_pfn (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stage2_get_leaf_entry (TYPE_1__*,int ,int **,int **,int **) ;
 int trace_kvm_access_fault (int ) ;

__attribute__((used)) static void handle_access_fault(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
{
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 kvm_pfn_t pfn;
 bool pfn_valid = 0;

 trace_kvm_access_fault(fault_ipa);

 spin_lock(&vcpu->kvm->mmu_lock);

 if (!stage2_get_leaf_entry(vcpu->kvm, fault_ipa, &pud, &pmd, &pte))
  goto out;

 if (pud) {
  *pud = kvm_s2pud_mkyoung(*pud);
  pfn = kvm_pud_pfn(*pud);
  pfn_valid = 1;
 } else if (pmd) {
  *pmd = pmd_mkyoung(*pmd);
  pfn = pmd_pfn(*pmd);
  pfn_valid = 1;
 } else {
  *pte = pte_mkyoung(*pte);
  pfn = pte_pfn(*pte);
  pfn_valid = 1;
 }

out:
 spin_unlock(&vcpu->kvm->mmu_lock);
 if (pfn_valid)
  kvm_set_pfn_accessed(pfn);
}
