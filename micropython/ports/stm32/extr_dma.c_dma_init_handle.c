
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int sub_instance; TYPE_1__* init; int instance; } ;
typedef TYPE_2__ dma_descr_t ;
struct TYPE_6__ {int Channel; int Request; int Direction; } ;
struct TYPE_8__ {void* Parent; TYPE_1__ Init; int Instance; } ;
typedef TYPE_3__ DMA_HandleTypeDef ;



void dma_init_handle(DMA_HandleTypeDef *dma, const dma_descr_t *dma_descr, uint32_t dir, void *data) {

    dma->Instance = dma_descr->instance;
    dma->Init = *dma_descr->init;
    dma->Init.Direction = dir;




    dma->Init.Channel = dma_descr->sub_instance;




    dma->Parent = data;
}
