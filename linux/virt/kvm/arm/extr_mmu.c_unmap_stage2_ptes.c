
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ PAGE_SIZE ;
 int __pte (int ) ;
 int clear_stage2_pmd_entry (struct kvm*,int *,scalar_t__) ;
 int kvm_flush_dcache_pte (int ) ;
 int kvm_is_device_pfn (int ) ;
 int kvm_set_pte (int *,int ) ;
 int kvm_tlb_flush_vmid_ipa (struct kvm*,scalar_t__) ;
 int pte_none (int ) ;
 int * pte_offset_kernel (int *,scalar_t__) ;
 int pte_pfn (int ) ;
 int put_page (int ) ;
 scalar_t__ stage2_pte_table_empty (struct kvm*,int *) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
         phys_addr_t addr, phys_addr_t end)
{
 phys_addr_t start_addr = addr;
 pte_t *pte, *start_pte;

 start_pte = pte = pte_offset_kernel(pmd, addr);
 do {
  if (!pte_none(*pte)) {
   pte_t old_pte = *pte;

   kvm_set_pte(pte, __pte(0));
   kvm_tlb_flush_vmid_ipa(kvm, addr);


   if (!kvm_is_device_pfn(pte_pfn(old_pte)))
    kvm_flush_dcache_pte(old_pte);

   put_page(virt_to_page(pte));
  }
 } while (pte++, addr += PAGE_SIZE, addr != end);

 if (stage2_pte_table_empty(kvm, start_pte))
  clear_stage2_pmd_entry(kvm, pmd, start_addr);
}
