
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mp_uint_t ;
typedef int dma_id_t ;


 int DMA1_ENABLE_MASK ;
 int DMA1_IS_CLK_ENABLED () ;
 int DMA2_ENABLE_MASK ;
 int DMA2_IS_CLK_ENABLED () ;
 int DMA_INVALID_CHANNEL ;
 int MICROPY_BEGIN_ATOMIC_SECTION () ;
 int MICROPY_END_ATOMIC_SECTION (int ) ;
 int NSTREAM ;
 int NSTREAMS_PER_CONTROLLER ;
 int __HAL_RCC_DMA1_CLK_ENABLE () ;
 int __HAL_RCC_DMA2_CLK_ENABLE () ;
 int dma_enable_mask ;
 int * dma_last_sub_instance ;

__attribute__((used)) static void dma_enable_clock(dma_id_t dma_id) {


    mp_uint_t irq_state = MICROPY_BEGIN_ATOMIC_SECTION();
    uint32_t old_enable_mask = dma_enable_mask;
    dma_enable_mask |= (1 << dma_id);
    MICROPY_END_ATOMIC_SECTION(irq_state);

    if (dma_id < NSTREAMS_PER_CONTROLLER) {
        if (((old_enable_mask & DMA1_ENABLE_MASK) == 0) && !DMA1_IS_CLK_ENABLED()) {
            __HAL_RCC_DMA1_CLK_ENABLE();




            for (int channel = 0; channel < NSTREAMS_PER_CONTROLLER; channel++) {
                dma_last_sub_instance[channel] = DMA_INVALID_CHANNEL;
            }
        }
    }
}
