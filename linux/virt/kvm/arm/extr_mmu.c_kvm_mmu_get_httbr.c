
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 scalar_t__ __kvm_cpu_uses_extended_idmap () ;
 int hyp_pgd ;
 int merged_hyp_pgd ;
 int virt_to_phys (int ) ;

phys_addr_t kvm_mmu_get_httbr(void)
{
 if (__kvm_cpu_uses_extended_idmap())
  return virt_to_phys(merged_hyp_pgd);
 else
  return virt_to_phys(hyp_pgd);
}
