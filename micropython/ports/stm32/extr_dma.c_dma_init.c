
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef size_t dma_id_t ;
struct TYPE_11__ {size_t id; int sub_instance; } ;
typedef TYPE_1__ dma_descr_t ;
struct TYPE_12__ {scalar_t__ Instance; size_t ChannelIndex; int DmaBaseAddress; int State; } ;
typedef TYPE_2__ DMA_HandleTypeDef ;


 int DMA1 ;
 int DMA2 ;
 scalar_t__ DMA2_Channel1 ;
 int DMA_PERIPH_TO_MEMORY ;
 int DMA_SUB_INSTANCE_AS_UINT8 (int ) ;
 int HAL_DMA_DeInit (TYPE_2__*) ;
 int HAL_DMA_Init (TYPE_2__*) ;
 int HAL_DMA_STATE_READY ;
 int HAL_NVIC_EnableIRQ (int ) ;
 int IRQ_PRI_DMA ;
 int IRQn_NONNEG (int ) ;
 size_t NSTREAMS_PER_CONTROLLER ;
 int NVIC_SetPriority (int ,int ) ;
 int __HAL_DMA1_REMAP (int ) ;
 int __HAL_DMA2_REMAP (int ) ;
 int dma_enable_clock (size_t) ;
 TYPE_2__** dma_handle ;
 int dma_init_handle (TYPE_2__*,TYPE_1__ const*,int ,void*) ;
 int * dma_irqn ;
 scalar_t__* dma_last_sub_instance ;
 int memset (TYPE_2__*,int ,int) ;

void dma_init(DMA_HandleTypeDef *dma, const dma_descr_t *dma_descr, uint32_t dir, void *data){



    memset(dma, 0, sizeof(*dma));

    if (dma_descr != ((void*)0)) {
        dma_id_t dma_id = dma_descr->id;

        dma_init_handle(dma, dma_descr, dir, data);

        dma_handle[dma_id] = dma;

        dma_enable_clock(dma_id);
        uint8_t sub_inst = DMA_SUB_INSTANCE_AS_UINT8(dma_descr->sub_instance) | (dir == DMA_PERIPH_TO_MEMORY) << 7;
        if (dma_last_sub_instance[dma_id] != sub_inst) {
            dma_last_sub_instance[dma_id] = sub_inst;



            HAL_DMA_DeInit(dma);
            HAL_DMA_Init(dma);
            NVIC_SetPriority(IRQn_NONNEG(dma_irqn[dma_id]), IRQ_PRI_DMA);







        } else {

            dma->State = HAL_DMA_STATE_READY;
        }


        HAL_NVIC_EnableIRQ(dma_irqn[dma_id]);
    }
}
