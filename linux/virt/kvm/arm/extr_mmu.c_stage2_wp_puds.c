
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 int kvm_s2pud_readonly (int *) ;
 int kvm_set_s2pud_readonly (int *) ;
 scalar_t__ stage2_pud_addr_end (struct kvm*,scalar_t__,scalar_t__) ;
 scalar_t__ stage2_pud_huge (struct kvm*,int ) ;
 int stage2_pud_none (struct kvm*,int ) ;
 int * stage2_pud_offset (struct kvm*,int *,scalar_t__) ;
 int stage2_wp_pmds (struct kvm*,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void stage2_wp_puds(struct kvm *kvm, pgd_t *pgd,
       phys_addr_t addr, phys_addr_t end)
{
 pud_t *pud;
 phys_addr_t next;

 pud = stage2_pud_offset(kvm, pgd, addr);
 do {
  next = stage2_pud_addr_end(kvm, addr, end);
  if (!stage2_pud_none(kvm, *pud)) {
   if (stage2_pud_huge(kvm, *pud)) {
    if (!kvm_s2pud_readonly(pud))
     kvm_set_s2pud_readonly(pud);
   } else {
    stage2_wp_pmds(kvm, pud, addr, next);
   }
  }
 } while (pud++, addr = next, addr != end);
}
