
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 scalar_t__ GET_BYTES_04 (int *) ;
 int GET_LEN (int *) ;
 int ignition_can ;

void ignition_can_hook(CAN_FIFOMailBox_TypeDef *to_push) {

  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);
  int len = GET_LEN(to_push);

  if (bus == 0) {

    if ((addr == 0x1F1) && (len == 8)) {

      ignition_can = (GET_BYTE(to_push, 0) & 0x20) != 0;
    }

    if ((addr == 0x348) && (len == 8)) {

      ignition_can = (GET_BYTE(to_push, 0) & 0x1) != 0;
    }

    if ((addr == 0x160) && (len == 5)) {

      ignition_can = GET_BYTES_04(to_push) != 0;
    }

    if ((addr == 0x3C0) && (len == 4)) {

     ignition_can = (GET_BYTE(to_push, 2) & 0x2) != 0;
    }
  }
}
