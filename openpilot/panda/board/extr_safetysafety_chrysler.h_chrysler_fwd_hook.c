
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int chrysler_camera_detected ;

__attribute__((used)) static int chrysler_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {

  int bus_fwd = -1;
  int addr = GET_ADDR(to_fwd);

  if ((bus_num == 0) && !chrysler_camera_detected) {
    bus_fwd = 2;
  }

  if ((bus_num == 2) && !chrysler_camera_detected && (addr != 658) && (addr != 678)) {
    bus_fwd = 0;
  }
  return bus_fwd;
}
