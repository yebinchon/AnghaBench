
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int WRITE_ONCE (int ,int ) ;
 int dsb (int ) ;
 int ishst ;

__attribute__((used)) static inline void kvm_set_pte(pte_t *ptep, pte_t new_pte)
{
 WRITE_ONCE(*ptep, new_pte);
 dsb(ishst);
}
