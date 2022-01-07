
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int RDLR; } ;
typedef TYPE_1__ CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (TYPE_1__*) ;
 int GET_BYTE (TYPE_1__*,int) ;
 int GET_BYTES_04 (TYPE_1__*) ;

__attribute__((used)) static int tesla_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {

  int bus_fwd = -1;
  int addr = GET_ADDR(to_fwd);

  if (bus_num == 0) {


    if (addr != 0x214) {

      bus_fwd = 2;
    }
    if (addr == 0x101) {
      to_fwd->RDLR = GET_BYTES_04(to_fwd) | 0x4000;
      uint32_t checksum = (GET_BYTE(to_fwd, 1) + GET_BYTE(to_fwd, 0) + 2) & 0xFF;
      to_fwd->RDLR = GET_BYTES_04(to_fwd) & 0xFFFF;
      to_fwd->RDLR = GET_BYTES_04(to_fwd) + (checksum << 16);
    }
  }
  if (bus_num == 2) {

    if (addr != 0x101) {
      bus_fwd = 0;
    }
  }
  return bus_fwd;
}
