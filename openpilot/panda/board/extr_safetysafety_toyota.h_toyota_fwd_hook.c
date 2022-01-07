
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 scalar_t__ long_controls_allowed ;
 scalar_t__ toyota_camera_forwarded ;
 int toyota_giraffe_switch_1 ;

__attribute__((used)) static int toyota_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {

  int bus_fwd = -1;
  if (toyota_camera_forwarded && !toyota_giraffe_switch_1) {
    if (bus_num == 0) {
      bus_fwd = 2;
    }
    if (bus_num == 2) {
      int addr = GET_ADDR(to_fwd);


      int is_lkas_msg = ((addr == 0x2E4) || (addr == 0x412) || (addr == 0x191));

      int is_acc_msg = (addr == 0x343);
      int block_msg = is_lkas_msg || (is_acc_msg && long_controls_allowed);
      if (!block_msg) {
        bus_fwd = 0;
      }
    }
  }
  return bus_fwd;
}
