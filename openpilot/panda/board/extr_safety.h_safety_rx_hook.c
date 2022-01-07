
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* rx ) (int *) ;} ;
typedef int CAN_FIFOMailBox_TypeDef ;


 TYPE_1__* current_hooks ;
 int stub1 (int *) ;

void safety_rx_hook(CAN_FIFOMailBox_TypeDef *to_push){
  current_hooks->rx(to_push);
}
