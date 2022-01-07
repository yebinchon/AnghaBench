
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ phys_addr_t ;
typedef int pgd_t ;


 int kvm_pgd_index (scalar_t__,unsigned long) ;
 scalar_t__ pgd_addr_end (scalar_t__,scalar_t__) ;
 int pgd_none (int ) ;
 int unmap_hyp_puds (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void __unmap_hyp_range(pgd_t *pgdp, unsigned long ptrs_per_pgd,
         phys_addr_t start, u64 size)
{
 pgd_t *pgd;
 phys_addr_t addr = start, end = start + size;
 phys_addr_t next;





 pgd = pgdp + kvm_pgd_index(addr, ptrs_per_pgd);
 do {
  next = pgd_addr_end(addr, end);
  if (!pgd_none(*pgd))
   unmap_hyp_puds(pgd, addr, next);
 } while (pgd++, addr = next, addr != end);
}
