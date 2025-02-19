
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 int clear_stage2_pgd_entry (struct kvm*,int *,scalar_t__) ;
 int kvm_flush_dcache_pud (int ) ;
 int kvm_tlb_flush_vmid_ipa (struct kvm*,scalar_t__) ;
 int put_page (int ) ;
 scalar_t__ stage2_pud_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 int stage2_pud_clear (struct kvm*,int *) ;
 scalar_t__ stage2_pud_huge (struct kvm*,int ) ;
 int stage2_pud_none (struct kvm*,int ) ;
 int * stage2_pud_offset (struct kvm*,int *,scalar_t__) ;
 scalar_t__ stage2_pud_table_empty (struct kvm*,int *) ;
 int unmap_stage2_pmds (struct kvm*,int *,scalar_t__,scalar_t__) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void unmap_stage2_puds(struct kvm *kvm, pgd_t *pgd,
         phys_addr_t addr, phys_addr_t end)
{
 phys_addr_t next, start_addr = addr;
 pud_t *pud, *start_pud;

 start_pud = pud = stage2_pud_offset(kvm, pgd, addr);
 do {
  next = stage2_pud_addr_end(kvm, addr, end);
  if (!stage2_pud_none(kvm, *pud)) {
   if (stage2_pud_huge(kvm, *pud)) {
    pud_t old_pud = *pud;

    stage2_pud_clear(kvm, pud);
    kvm_tlb_flush_vmid_ipa(kvm, addr);
    kvm_flush_dcache_pud(old_pud);
    put_page(virt_to_page(pud));
   } else {
    unmap_stage2_pmds(kvm, pud, addr, next);
   }
  }
 } while (pud++, addr = next, addr != end);

 if (stage2_pud_table_empty(kvm, start_pud))
  clear_stage2_pgd_entry(kvm, pgd, start_addr);
}
