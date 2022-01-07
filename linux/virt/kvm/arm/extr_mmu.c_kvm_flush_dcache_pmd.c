
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int __kvm_flush_dcache_pmd (int ) ;

__attribute__((used)) static void kvm_flush_dcache_pmd(pmd_t pmd)
{
 __kvm_flush_dcache_pmd(pmd);
}
