
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t dma_id_t ;
struct TYPE_3__ {size_t id; int sub_instance; } ;
typedef TYPE_1__ dma_descr_t ;


 int DMA_INVALID_CHANNEL ;
 int DMA_SUB_INSTANCE_AS_UINT8 (int ) ;
 int* dma_last_sub_instance ;

void dma_invalidate_channel(const dma_descr_t *dma_descr) {
    if (dma_descr != ((void*)0)) {
        dma_id_t dma_id = dma_descr->id;

        if ((dma_last_sub_instance[dma_id] & 0x7f) == DMA_SUB_INSTANCE_AS_UINT8(dma_descr->sub_instance) ) {
            dma_last_sub_instance[dma_id] = DMA_INVALID_CHANNEL;
        }
    }
}
