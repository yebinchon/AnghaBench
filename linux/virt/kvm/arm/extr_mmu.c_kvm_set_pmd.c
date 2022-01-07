
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int WRITE_ONCE (int ,int ) ;
 int dsb (int ) ;
 int ishst ;

__attribute__((used)) static inline void kvm_set_pmd(pmd_t *pmdp, pmd_t new_pmd)
{
 WRITE_ONCE(*pmdp, new_pmd);
 dsb(ishst);
}
