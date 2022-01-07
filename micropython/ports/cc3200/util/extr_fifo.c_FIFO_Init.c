
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int uiLast; unsigned int uiElementsMax; void (* pfElementPush ) (void* const,void const* const) ;void (* pfElementPop ) (void* const,void* const) ;scalar_t__ uiElementCount; scalar_t__ uiFirst; } ;
typedef TYPE_1__ FIFO_t ;



void FIFO_Init (FIFO_t *fifo, unsigned int uiElementsMax,
                void (*pfElmentPush)(void * const pvFifo, const void * const pvElement),
                void (*pfElementPop)(void * const pvFifo, void * const pvElement)) {
    if (fifo) {
        fifo->uiFirst = 0;
        fifo->uiLast = uiElementsMax - 1;
        fifo->uiElementCount = 0;
        fifo->uiElementsMax = uiElementsMax;
        fifo->pfElementPush = pfElmentPush;
        fifo->pfElementPop = pfElementPop;
    }
}
