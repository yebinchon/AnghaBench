
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {void* pvElements; } ;
typedef TYPE_1__ FIFO_t ;


 int FIFO_Init (TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* socketfifo ;
 int socketfifo_Pop ;
 int socketfifo_Push ;

void SOCKETFIFO_Init (FIFO_t *fifo, void *elements, uint32_t maxcount) {

    socketfifo = fifo;
    socketfifo->pvElements = elements;
    FIFO_Init (socketfifo, maxcount, socketfifo_Push, socketfifo_Pop);
}
