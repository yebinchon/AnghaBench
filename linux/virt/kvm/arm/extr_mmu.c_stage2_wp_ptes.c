
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ PAGE_SIZE ;
 int kvm_s2pte_readonly (int *) ;
 int kvm_set_s2pte_readonly (int *) ;
 int pte_none (int ) ;
 int * pte_offset_kernel (int *,scalar_t__) ;

__attribute__((used)) static void stage2_wp_ptes(pmd_t *pmd, phys_addr_t addr, phys_addr_t end)
{
 pte_t *pte;

 pte = pte_offset_kernel(pmd, addr);
 do {
  if (!pte_none(*pte)) {
   if (!kvm_s2pte_readonly(pte))
    kvm_set_s2pte_readonly(pte);
  }
 } while (pte++, addr += PAGE_SIZE, addr != end);
}
