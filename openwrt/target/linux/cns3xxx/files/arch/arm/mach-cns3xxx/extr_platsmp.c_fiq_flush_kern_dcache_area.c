
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fiq_dma_flush_range (void*,void*) ;

void fiq_flush_kern_dcache_area(void *addr, size_t size)
{
 fiq_dma_flush_range(addr, addr + size);
}
