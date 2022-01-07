
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 scalar_t__ board_has_relay () ;

__attribute__((used)) static int honda_bosch_fwd_hook(int bus_num, CAN_FIFOMailBox_TypeDef *to_fwd) {
  int bus_fwd = -1;
  int bus_rdr_cam = (board_has_relay()) ? 2 : 1;
  int bus_rdr_car = (board_has_relay()) ? 0 : 2;

  if (bus_num == bus_rdr_car) {
    bus_fwd = bus_rdr_cam;
  }
  if (bus_num == bus_rdr_cam) {
    int addr = GET_ADDR(to_fwd);
    int is_lkas_msg = (addr == 0xE4) || (addr == 0x33D);
    if (!is_lkas_msg) {
      bus_fwd = bus_rdr_car;
    }
  }
  return bus_fwd;
}
