
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__* counter; } ;




 int DMA_IDLE_ENABLED () ;
 int DMA_IDLE_TICK (int) ;
 scalar_t__ DMA_IDLE_TICK_MAX ;
 int DMA_SYSTICK_LOG2 ;
 int __HAL_RCC_DMA1_CLK_DISABLE () ;
 int __HAL_RCC_DMA2_CLK_DISABLE () ;
 int const dma_enable_mask ;
 TYPE_1__ dma_idle ;

__attribute__((used)) static void dma_idle_handler(uint32_t tick) {
    if (!DMA_IDLE_ENABLED() || !DMA_IDLE_TICK(tick)) {
        return;
    }

    static const uint32_t controller_mask[] = {
        129,



    };
    {
        int controller = (tick >> DMA_SYSTICK_LOG2) & 1;
        if (dma_idle.counter[controller] == 0) {
            return;
        }
        if (++dma_idle.counter[controller] > DMA_IDLE_TICK_MAX) {
            if ((dma_enable_mask & controller_mask[controller]) == 0) {


                dma_idle.counter[controller] = 0;
                if (controller == 0) {
                    __HAL_RCC_DMA1_CLK_DISABLE();
                }





            } else {


                dma_idle.counter[controller] = 1;
            }
        }
    }
}
