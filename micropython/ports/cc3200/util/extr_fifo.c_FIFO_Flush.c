
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ uiElementsMax; scalar_t__ uiLast; scalar_t__ uiFirst; scalar_t__ uiElementCount; } ;
typedef TYPE_1__ FIFO_t ;



void FIFO_Flush (FIFO_t *fifo) {
    if (fifo) {
        fifo->uiElementCount = 0;
        fifo->uiFirst = 0;
        fifo->uiLast = fifo->uiElementsMax - 1;
    }
}
