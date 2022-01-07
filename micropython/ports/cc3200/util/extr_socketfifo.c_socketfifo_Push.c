
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int uiLast; scalar_t__ pvElements; } ;
typedef int SocketFifoElement_t ;
typedef TYPE_1__ FIFO_t ;


 int memcpy (int *,void const* const,int) ;

__attribute__((used)) static void socketfifo_Push (void * const pvFifo, const void * const pvElement) {
    if ((pvFifo != ((void*)0)) && (((void*)0) != pvElement)) {
        unsigned int uiLast = ((FIFO_t *)pvFifo)->uiLast;
        memcpy (&((SocketFifoElement_t *)((FIFO_t *)pvFifo)->pvElements)[uiLast], pvElement, sizeof(SocketFifoElement_t));
    }
}
