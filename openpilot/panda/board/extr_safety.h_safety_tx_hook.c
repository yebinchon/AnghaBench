
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* tx ) (int *) ;} ;
typedef int CAN_FIFOMailBox_TypeDef ;


 TYPE_1__* current_hooks ;
 int stub1 (int *) ;

int safety_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {
  return current_hooks->tx(to_send);
}
