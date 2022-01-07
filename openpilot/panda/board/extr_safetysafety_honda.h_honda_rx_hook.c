
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 int GET_INTERCEPTOR (int *) ;
 int GET_LEN (int *) ;
 int HONDA_GAS_INTERCEPTOR_THRESHOLD ;
 int controls_allowed ;
 int gas_interceptor_detected ;
 int gas_interceptor_prev ;
 scalar_t__ honda_alt_brake_msg ;
 int honda_brake ;
 int honda_brake_pressed_prev ;
 int honda_fwd_brake ;
 int honda_gas_prev ;
 int honda_moving ;
 scalar_t__ long_controls_allowed ;

__attribute__((used)) static void honda_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {

  int addr = GET_ADDR(to_push);
  int len = GET_LEN(to_push);
  int bus = GET_BUS(to_push);


  if (addr == 0x158) {

    honda_moving = GET_BYTE(to_push, 0) | GET_BYTE(to_push, 1);
  }



  if ((addr == 0x1A6) || (addr == 0x296)) {
    int button = (GET_BYTE(to_push, 0) & 0xE0) >> 5;
    switch (button) {
      case 2:
        controls_allowed = 0;
        break;
      case 3:
      case 4:
        controls_allowed = 1;
        break;
      default:
        break;
    }
  }
  bool is_user_brake_msg = honda_alt_brake_msg ? ((addr) == 0x1BE) : ((addr) == 0x17C);
  if (is_user_brake_msg) {
    bool brake_pressed = honda_alt_brake_msg ? (GET_BYTE((to_push), 0) & 0x10) : (GET_BYTE((to_push), 6) & 0x20);
    if (brake_pressed && (!(honda_brake_pressed_prev) || honda_moving)) {
      controls_allowed = 0;
    }
    honda_brake_pressed_prev = brake_pressed;
  }



  if ((addr == 0x201) && (len == 6)) {
    gas_interceptor_detected = 1;
    int gas_interceptor = GET_INTERCEPTOR(to_push);
    if ((gas_interceptor > HONDA_GAS_INTERCEPTOR_THRESHOLD) &&
        (gas_interceptor_prev <= HONDA_GAS_INTERCEPTOR_THRESHOLD) &&
        long_controls_allowed) {
      controls_allowed = 0;
    }
    gas_interceptor_prev = gas_interceptor;
  }


  if (!gas_interceptor_detected) {
    if (addr == 0x17C) {
      int gas = GET_BYTE(to_push, 0);
      if (gas && !(honda_gas_prev) && long_controls_allowed) {
        controls_allowed = 0;
      }
      honda_gas_prev = gas;
    }
  }
  if ((bus == 2) && (addr == 0x1FA)) {
    bool honda_stock_aeb = GET_BYTE(to_push, 3) & 0x20;
    int honda_stock_brake = (GET_BYTE(to_push, 0) << 2) + ((GET_BYTE(to_push, 1) >> 6) & 0x3);



    if (!honda_stock_aeb) {
      honda_fwd_brake = 0;
    } else if (honda_stock_brake >= honda_brake) {
      honda_fwd_brake = 1;
    } else {

    }
  }
}
