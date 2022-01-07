
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ PAGE_SIZE ;
 int kvm_flush_dcache_pte (int ) ;
 int kvm_is_device_pfn (int ) ;
 int pte_none (int ) ;
 int * pte_offset_kernel (int *,scalar_t__) ;
 int pte_pfn (int ) ;

__attribute__((used)) static void stage2_flush_ptes(struct kvm *kvm, pmd_t *pmd,
         phys_addr_t addr, phys_addr_t end)
{
 pte_t *pte;

 pte = pte_offset_kernel(pmd, addr);
 do {
  if (!pte_none(*pte) && !kvm_is_device_pfn(pte_pfn(*pte)))
   kvm_flush_dcache_pte(*pte);
 } while (pte++, addr += PAGE_SIZE, addr != end);
}
