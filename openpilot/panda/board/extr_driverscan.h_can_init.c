
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int CAN_TypeDef ;


 int * CANIF_FROM_CAN_NUM (int) ;
 int can_set_speed (int) ;
 int llcan_init (int *) ;
 int process_can (int) ;

void can_init(uint8_t can_number) {
  if (can_number != 0xffU) {
    CAN_TypeDef *CAN = CANIF_FROM_CAN_NUM(can_number);
    can_set_speed(can_number);

    llcan_init(CAN);


    process_can(can_number);
  }
}
