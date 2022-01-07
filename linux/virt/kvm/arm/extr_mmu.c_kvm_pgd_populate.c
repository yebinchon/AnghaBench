
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 int WRITE_ONCE (int ,int ) ;
 int dsb (int ) ;
 int ishst ;
 int kvm_mk_pgd (int *) ;

__attribute__((used)) static inline void kvm_pgd_populate(pgd_t *pgdp, pud_t *pudp)
{
 WRITE_ONCE(*pgdp, kvm_mk_pgd(pudp));
 dsb(ishst);
}
