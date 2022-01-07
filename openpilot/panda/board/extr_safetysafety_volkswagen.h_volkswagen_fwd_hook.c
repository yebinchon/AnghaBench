
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int MSG_HCA_01 ;
 int MSG_LDW_02 ;

__attribute__((used)) static int volkswagen_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {
  int addr = GET_ADDR(to_fwd);
  int bus_fwd = -1;



  switch (bus_num) {
    case 0:

      bus_fwd = 2;
      break;
    case 2:
      if ((addr == MSG_HCA_01) || (addr == MSG_LDW_02)) {

        bus_fwd = -1;
      } else {

        bus_fwd = 0;
      }
      break;
    default:

      bus_fwd = -1;
      break;
  }

  return bus_fwd;
}
