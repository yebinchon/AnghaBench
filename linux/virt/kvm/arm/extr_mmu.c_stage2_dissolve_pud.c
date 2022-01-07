
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int phys_addr_t ;


 int kvm_tlb_flush_vmid_ipa (struct kvm*,int ) ;
 int put_page (int ) ;
 int stage2_pud_clear (struct kvm*,int *) ;
 int stage2_pud_huge (struct kvm*,int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void stage2_dissolve_pud(struct kvm *kvm, phys_addr_t addr, pud_t *pudp)
{
 if (!stage2_pud_huge(kvm, *pudp))
  return;

 stage2_pud_clear(kvm, pudp);
 kvm_tlb_flush_vmid_ipa(kvm, addr);
 put_page(virt_to_page(pudp));
}
