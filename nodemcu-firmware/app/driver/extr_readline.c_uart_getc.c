
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* pReadPos; scalar_t__* pRcvMsgBuff; scalar_t__* pWritePos; } ;
struct TYPE_4__ {TYPE_1__ rcv_buff; } ;
typedef TYPE_1__ RcvMsgBuff ;


 int ETS_INTR_LOCK () ;
 int ETS_INTR_UNLOCK () ;
 int RX_BUFF_SIZE ;
 TYPE_2__ UartDev ;

bool uart_getc(char *c){
    RcvMsgBuff *pRxBuff = &(UartDev.rcv_buff);
    if(pRxBuff->pWritePos == pRxBuff->pReadPos){
        return 0;
    }

    ETS_INTR_LOCK();
    *c = (char)*(pRxBuff->pReadPos);
    if (pRxBuff->pReadPos == (pRxBuff->pRcvMsgBuff + RX_BUFF_SIZE)) {
        pRxBuff->pReadPos = pRxBuff->pRcvMsgBuff ;
    } else {
        pRxBuff->pReadPos++;
    }

    ETS_INTR_UNLOCK();
    return 1;
}
