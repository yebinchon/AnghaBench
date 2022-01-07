
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PGDIR_SHIFT ;

__attribute__((used)) static unsigned int kvm_pgd_index(unsigned long addr, unsigned int ptrs_per_pgd)
{
 return (addr >> PGDIR_SHIFT) & (ptrs_per_pgd - 1);
}
