
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 int clear_stage2_pud_entry (struct kvm*,int *,scalar_t__) ;
 int kvm_flush_dcache_pmd (int ) ;
 int kvm_tlb_flush_vmid_ipa (struct kvm*,scalar_t__) ;
 int pmd_clear (int *) ;
 int pmd_none (int ) ;
 scalar_t__ pmd_thp_or_huge (int ) ;
 int put_page (int ) ;
 scalar_t__ stage2_pmd_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 int * stage2_pmd_offset (struct kvm*,int *,scalar_t__) ;
 scalar_t__ stage2_pmd_table_empty (struct kvm*,int *) ;
 int unmap_stage2_ptes (struct kvm*,int *,scalar_t__,scalar_t__) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void unmap_stage2_pmds(struct kvm *kvm, pud_t *pud,
         phys_addr_t addr, phys_addr_t end)
{
 phys_addr_t next, start_addr = addr;
 pmd_t *pmd, *start_pmd;

 start_pmd = pmd = stage2_pmd_offset(kvm, pud, addr);
 do {
  next = stage2_pmd_addr_end(kvm, addr, end);
  if (!pmd_none(*pmd)) {
   if (pmd_thp_or_huge(*pmd)) {
    pmd_t old_pmd = *pmd;

    pmd_clear(pmd);
    kvm_tlb_flush_vmid_ipa(kvm, addr);

    kvm_flush_dcache_pmd(old_pmd);

    put_page(virt_to_page(pmd));
   } else {
    unmap_stage2_ptes(kvm, pmd, addr, next);
   }
  }
 } while (pmd++, addr = next, addr != end);

 if (stage2_pmd_table_empty(kvm, start_pmd))
  clear_stage2_pud_entry(kvm, pud, start_addr);
}
