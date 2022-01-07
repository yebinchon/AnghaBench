
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int WRITE_ONCE (int ,int ) ;
 int dsb (int ) ;
 int ishst ;
 int kvm_mk_pud (int *) ;

__attribute__((used)) static inline void kvm_pud_populate(pud_t *pudp, pmd_t *pmdp)
{
 WRITE_ONCE(*pudp, kvm_mk_pud(pmdp));
 dsb(ishst);
}
