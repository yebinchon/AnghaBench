
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int TSR; } ;


 TYPE_1__* CAN ;
 int CAN_TSR_RQCP0 ;

void CAN1_TX_IRQHandler(void) {

  CAN->TSR |= CAN_TSR_RQCP0;
}
