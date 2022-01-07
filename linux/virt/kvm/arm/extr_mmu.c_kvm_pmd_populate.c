
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;


 int kvm_mk_pmd (int *) ;
 int kvm_set_pmd (int *,int ) ;

__attribute__((used)) static inline void kvm_pmd_populate(pmd_t *pmdp, pte_t *ptep)
{
 kvm_set_pmd(pmdp, kvm_mk_pmd(ptep));
}
