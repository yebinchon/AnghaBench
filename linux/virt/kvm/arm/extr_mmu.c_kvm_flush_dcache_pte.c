
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int __kvm_flush_dcache_pte (int ) ;

__attribute__((used)) static void kvm_flush_dcache_pte(pte_t pte)
{
 __kvm_flush_dcache_pte(pte);
}
