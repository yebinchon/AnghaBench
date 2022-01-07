
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int uiFirst; scalar_t__ pvElements; } ;
typedef int SocketFifoElement_t ;
typedef TYPE_1__ FIFO_t ;


 int memcpy (void* const,int *,int) ;

__attribute__((used)) static void socketfifo_Pop (void * const pvFifo, void * const pvElement) {
    if ((pvFifo != ((void*)0)) && (((void*)0) != pvElement)) {
        unsigned int uiFirst = ((FIFO_t *)pvFifo)->uiFirst;
        memcpy (pvElement, &((SocketFifoElement_t *)((FIFO_t *)pvFifo)->pvElements)[uiFirst], sizeof(SocketFifoElement_t));
    }
}
