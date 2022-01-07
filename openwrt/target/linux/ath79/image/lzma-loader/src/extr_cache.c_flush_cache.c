
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CONFIG_CACHELINE_SIZE ;
 int Hit_Invalidate_I ;
 int Hit_Writeback_Inv_D ;
 int cache_op (int ,unsigned long) ;

void flush_cache(unsigned long start_addr, unsigned long size)
{
 unsigned long lsize = CONFIG_CACHELINE_SIZE;
 unsigned long addr = start_addr & ~(lsize - 1);
 unsigned long aend = (start_addr + size - 1) & ~(lsize - 1);

 while (1) {
  cache_op(Hit_Writeback_Inv_D, addr);
  cache_op(Hit_Invalidate_I, addr);
  if (addr == aend)
   break;
  addr += lsize;
 }
}
