
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_id_t ;


 int dma_enable_mask ;
 int dma_tickle (int) ;

__attribute__((used)) static void dma_disable_clock(dma_id_t dma_id) {



    dma_tickle(dma_id);
    dma_enable_mask &= ~(1 << dma_id);
}
