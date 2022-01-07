
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MSR; int TSR; } ;
typedef TYPE_1__ CAN_TypeDef ;


 int CAN_MSR_ERRI ;
 int CAN_TSR_ABRQ0 ;

void llcan_clear_send(CAN_TypeDef *CAN_obj) {
  CAN_obj->TSR |= CAN_TSR_ABRQ0;
  CAN_obj->MSR &= ~(CAN_MSR_ERRI);

  CAN_obj->MSR = CAN_obj->MSR;
}
