
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int honda_fwd_brake ;
 scalar_t__ long_controls_allowed ;

__attribute__((used)) static int honda_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {




  int bus_fwd = -1;

  if (bus_num == 0) {
    bus_fwd = 2;
  }
  if (bus_num == 2) {

    int addr = GET_ADDR(to_fwd);
    bool is_lkas_msg = (addr == 0xE4) || (addr == 0x194) || (addr == 0x33D);
    bool is_acc_hud_msg = (addr == 0x30C) || (addr == 0x39F);
    bool is_brake_msg = addr == 0x1FA;
    bool block_fwd = is_lkas_msg ||
                     (is_acc_hud_msg && long_controls_allowed) ||
                     (is_brake_msg && long_controls_allowed && !honda_fwd_brake);
    if (!block_fwd) {
      bus_fwd = 0;
    }
  }
  return bus_fwd;
}
