
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dma_id_t ;
struct TYPE_2__ {int* counter; } ;


 scalar_t__ NSTREAMS_PER_CONTROLLER ;
 int SYSTICK_DISPATCH_DMA ;
 TYPE_1__ dma_idle ;
 int dma_idle_handler ;
 int systick_enable_dispatch (int ,int ) ;

__attribute__((used)) static void dma_tickle(dma_id_t dma_id) {
    dma_idle.counter[(dma_id < NSTREAMS_PER_CONTROLLER) ? 0 : 1] = 1;
    systick_enable_dispatch(SYSTICK_DISPATCH_DMA, dma_idle_handler);
}
