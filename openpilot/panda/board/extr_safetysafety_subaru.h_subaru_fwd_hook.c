
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;

__attribute__((used)) static int subaru_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {

  int bus_fwd = -1;
  if (bus_num == 0) {
    bus_fwd = 2;
  }
  if (bus_num == 2) {




    int addr = GET_ADDR(to_fwd);
    int block_msg = (addr == 290) || (addr == 356) || (addr == 545) || (addr == 802);
    if (!block_msg) {
      bus_fwd = 0;
    }
  }


  return bus_fwd;
}
