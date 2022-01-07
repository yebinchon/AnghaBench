
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int VM_BUG_ON (int ) ;
 int free_page (unsigned long) ;
 int kvm_tlb_flush_vmid_ipa (struct kvm*,int ) ;
 int pmd_clear (int *) ;
 int pmd_thp_or_huge (int ) ;
 int * pte_offset_kernel (int *,int ) ;
 int put_page (int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void clear_stage2_pmd_entry(struct kvm *kvm, pmd_t *pmd, phys_addr_t addr)
{
 pte_t *pte_table = pte_offset_kernel(pmd, 0);
 VM_BUG_ON(pmd_thp_or_huge(*pmd));
 pmd_clear(pmd);
 kvm_tlb_flush_vmid_ipa(kvm, addr);
 free_page((unsigned long)pte_table);
 put_page(virt_to_page(pmd));
}
