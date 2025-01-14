
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_2__* instance; } ;
typedef TYPE_1__ dma_descr_t ;
struct TYPE_6__ {int CR; int FCR; scalar_t__ NDTR; } ;
typedef TYPE_2__ DMA_Stream_TypeDef ;


 int DMA_SxCR_EN ;
 int dma_deinit (TYPE_1__ const*) ;
 int mp_hal_ticks_ms () ;

void dma_nohal_deinit(const dma_descr_t *descr) {
    DMA_Stream_TypeDef *dma = descr->instance;
    dma->CR &= ~DMA_SxCR_EN;
    uint32_t t0 = mp_hal_ticks_ms();
    while ((dma->CR & DMA_SxCR_EN) && mp_hal_ticks_ms() - t0 < 100) {
    }
    dma->CR = 0;
    dma->NDTR = 0;
    dma->FCR = 0x21;
    dma_deinit(descr);
}
