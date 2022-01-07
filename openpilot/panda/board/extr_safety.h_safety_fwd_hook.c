
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fwd ) (int,int *) ;} ;
typedef int CAN_FIFOMailBox_TypeDef ;


 TYPE_1__* current_hooks ;
 int stub1 (int,int *) ;

int safety_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {
  return current_hooks->fwd(bus_num, to_fwd);
}
