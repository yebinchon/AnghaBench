
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CONFIG_CACHELINE_SIZE ;
 int Hit_Invalidate_I ;
 int Hit_Writeback_Inv_D ;
 int cache_op (int ,unsigned long) ;
 int printf (char*,unsigned long,unsigned long,unsigned long,unsigned long) ;

void flush_cache(unsigned long start_addr, unsigned long size)
{
 unsigned long lsize = CONFIG_CACHELINE_SIZE;
 unsigned long addr = start_addr & ~(lsize - 1);
 unsigned long aend = (start_addr + size + (lsize - 1)) & ~(lsize - 1);

 printf("blasting from 0x%08x to 0x%08x (0x%08x - 0x%08x)\n", start_addr, size, addr, aend);

 while (1) {
  cache_op(Hit_Writeback_Inv_D, addr);
  cache_op(Hit_Invalidate_I, addr);
  if (addr == aend)
   break;
  addr += lsize;
 }
}
