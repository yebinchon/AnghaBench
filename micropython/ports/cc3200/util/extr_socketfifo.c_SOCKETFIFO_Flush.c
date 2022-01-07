
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; scalar_t__ freedata; } ;
typedef TYPE_1__ SocketFifoElement_t ;


 scalar_t__ SOCKETFIFO_Pop (TYPE_1__*) ;
 int mem_Free (int ) ;

void SOCKETFIFO_Flush (void) {
    SocketFifoElement_t element;
    while (SOCKETFIFO_Pop(&element)) {
        if (element.freedata) {
            mem_Free(element.data);
        }
    }
}
