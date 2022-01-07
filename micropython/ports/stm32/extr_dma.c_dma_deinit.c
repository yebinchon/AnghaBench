
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t id; } ;
typedef TYPE_1__ dma_descr_t ;


 int HAL_NVIC_DisableIRQ (int ) ;
 int dma_disable_clock (size_t) ;
 int ** dma_handle ;
 int * dma_irqn ;

void dma_deinit(const dma_descr_t *dma_descr) {
    if (dma_descr != ((void*)0)) {

        HAL_NVIC_DisableIRQ(dma_irqn[dma_descr->id]);

        dma_handle[dma_descr->id] = ((void*)0);

        dma_disable_clock(dma_descr->id);
    }
}
