
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int kvm_tlb_flush_vmid_ipa (struct kvm*,int ) ;
 int pmd_clear (int *) ;
 int pmd_thp_or_huge (int ) ;
 int put_page (int ) ;
 int virt_to_page (int *) ;

__attribute__((used)) static void stage2_dissolve_pmd(struct kvm *kvm, phys_addr_t addr, pmd_t *pmd)
{
 if (!pmd_thp_or_huge(*pmd))
  return;

 pmd_clear(pmd);
 kvm_tlb_flush_vmid_ipa(kvm, addr);
 put_page(virt_to_page(pmd));
}
