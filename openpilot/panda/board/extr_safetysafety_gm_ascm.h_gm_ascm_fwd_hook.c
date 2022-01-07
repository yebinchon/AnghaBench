
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int RIR; } ;
typedef TYPE_1__ CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (TYPE_1__*) ;
 int GET_BYTE (TYPE_1__*,int) ;

__attribute__((used)) static int gm_ascm_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {

  int bus_fwd = -1;

  if (bus_num == 0) {
    int addr = GET_ADDR(to_fwd);
    bus_fwd = 2;




    if ((addr == 0x152) || (addr == 0x154)) {
      bool supercruise_on = (GET_BYTE(to_fwd, 4) & 0x10) != 0;
      if (!supercruise_on) {
        bus_fwd = -1;
      }
    }
    if ((addr == 0x151) || (addr == 0x153) || (addr == 0x314)) {



      uint32_t fwd_addr = addr + 1;
      to_fwd->RIR = (fwd_addr << 21) | (to_fwd->RIR & 0x1fffff);
    }
  }

  if (bus_num == 2) {
    bus_fwd = 0;
  }

  return bus_fwd;
}
