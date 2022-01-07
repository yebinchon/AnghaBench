
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int kvm_s2pmd_exec (int *) ;
 int kvm_s2pte_exec (int *) ;
 int kvm_s2pud_exec (int *) ;
 int stage2_get_leaf_entry (struct kvm*,int ,int **,int **,int **) ;

__attribute__((used)) static bool stage2_is_exec(struct kvm *kvm, phys_addr_t addr)
{
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;
 bool found;

 found = stage2_get_leaf_entry(kvm, addr, &pudp, &pmdp, &ptep);
 if (!found)
  return 0;

 if (pudp)
  return kvm_s2pud_exec(pudp);
 else if (pmdp)
  return kvm_s2pmd_exec(pmdp);
 else
  return kvm_s2pte_exec(ptep);
}
