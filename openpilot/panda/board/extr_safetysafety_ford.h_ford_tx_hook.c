
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BYTE (int *,int) ;
 scalar_t__ controls_allowed ;
 scalar_t__ ford_brake_prev ;
 scalar_t__ ford_gas_prev ;
 scalar_t__ ford_moving ;

__attribute__((used)) static int ford_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;


  int pedal_pressed = ford_gas_prev || (ford_brake_prev && ford_moving);
  bool current_controls_allowed = controls_allowed && !(pedal_pressed);
  int addr = GET_ADDR(to_send);


  if (addr == 0x3CA) {
    if (!current_controls_allowed) {

      if ((GET_BYTE(to_send, 0) & 0xF0) != 0xF0) {
        tx = 0;
      }
    }
  }



  if (addr == 0x83) {
    if ((GET_BYTE(to_send, 3) & 0x30) != 0) {
      tx = 0;
    }
  }


  return tx;
}
