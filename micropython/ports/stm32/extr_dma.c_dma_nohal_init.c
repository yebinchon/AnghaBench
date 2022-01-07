
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int sub_instance; TYPE_3__* init; int id; TYPE_2__* instance; } ;
typedef TYPE_1__ dma_descr_t ;
struct TYPE_7__ {int MemBurst; int PeriphBurst; int Priority; int MemInc; int PeriphInc; int FIFOMode; int FIFOThreshold; } ;
struct TYPE_6__ {int CR; int FCR; } ;
typedef TYPE_2__ DMA_Stream_TypeDef ;
typedef TYPE_3__ DMA_InitTypeDef ;


 int dma_enable_clock (int ) ;

void dma_nohal_init(const dma_descr_t *descr, uint32_t config) {
    DMA_Stream_TypeDef *dma = descr->instance;


    dma_enable_clock(descr->id);


    const DMA_InitTypeDef *init = descr->init;
    dma->CR =
        descr->sub_instance
        | init->MemBurst
        | init->PeriphBurst
        | init->Priority
        | init->MemInc
        | init->PeriphInc
        | config
        ;


    dma->FCR =
        init->FIFOMode
        | init->FIFOThreshold
        ;
}
