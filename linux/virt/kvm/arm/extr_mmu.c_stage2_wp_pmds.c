
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 int kvm_s2pmd_readonly (int *) ;
 int kvm_set_s2pmd_readonly (int *) ;
 int pmd_none (int ) ;
 scalar_t__ pmd_thp_or_huge (int ) ;
 scalar_t__ stage2_pmd_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 int * stage2_pmd_offset (struct kvm*,int *,scalar_t__) ;
 int stage2_wp_ptes (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void stage2_wp_pmds(struct kvm *kvm, pud_t *pud,
      phys_addr_t addr, phys_addr_t end)
{
 pmd_t *pmd;
 phys_addr_t next;

 pmd = stage2_pmd_offset(kvm, pud, addr);

 do {
  next = stage2_pmd_addr_end(kvm, addr, end);
  if (!pmd_none(*pmd)) {
   if (pmd_thp_or_huge(*pmd)) {
    if (!kvm_s2pmd_readonly(pmd))
     kvm_set_s2pmd_readonly(pmd);
   } else {
    stage2_wp_ptes(pmd, addr, next);
   }
  }
 } while (pmd++, addr = next, addr != end);
}
