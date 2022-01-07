
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 scalar_t__ HONDA_GAS_INTERCEPTOR_THRESHOLD ;
 scalar_t__ board_has_relay () ;
 scalar_t__ controls_allowed ;
 scalar_t__ gas_interceptor_prev ;
 scalar_t__ honda_bosch_hardware ;
 int honda_brake ;
 scalar_t__ honda_brake_pressed_prev ;
 scalar_t__ honda_fwd_brake ;
 scalar_t__ honda_gas_prev ;
 scalar_t__ honda_moving ;
 int long_controls_allowed ;

__attribute__((used)) static int honda_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int addr = GET_ADDR(to_send);
  int bus = GET_BUS(to_send);



  int pedal_pressed = honda_gas_prev || (gas_interceptor_prev > HONDA_GAS_INTERCEPTOR_THRESHOLD) ||
                      (honda_brake_pressed_prev && honda_moving);
  bool current_controls_allowed = controls_allowed && !(pedal_pressed);


  if ((addr == 0x1FA) && (bus == 0)) {
    honda_brake = (GET_BYTE(to_send, 0) << 2) + ((GET_BYTE(to_send, 1) >> 6) & 0x3);
    if (!current_controls_allowed || !long_controls_allowed) {
      if (honda_brake != 0) {
        tx = 0;
      }
    }
    if (honda_brake > 255) {
      tx = 0;
    }
    if (honda_fwd_brake) {
      tx = 0;
    }
  }


  if ((addr == 0xE4) || (addr == 0x194)) {
    if (!current_controls_allowed) {
      bool steer_applied = GET_BYTE(to_send, 0) | GET_BYTE(to_send, 1);
      if (steer_applied) {
        tx = 0;
      }
    }
  }


  if (addr == 0x200) {
    if (!current_controls_allowed || !long_controls_allowed) {
      if (GET_BYTE(to_send, 0) || GET_BYTE(to_send, 1)) {
        tx = 0;
      }
    }
  }




  int bus_pt = ((board_has_relay()) && honda_bosch_hardware)? 1 : 0;
  if ((addr == 0x296) && honda_bosch_hardware &&
      !current_controls_allowed && (bus == bus_pt)) {
    if (((GET_BYTE(to_send, 0) >> 5) & 0x7) != 2) {
      tx = 0;
    }
  }


  return tx;
}
