
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BYTE (int *,int) ;
 int controls_allowed ;
 int ford_brake_prev ;
 int ford_gas_prev ;
 int ford_moving ;

__attribute__((used)) static void ford_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {

  int addr = GET_ADDR(to_push);

  if (addr == 0x217) {

    ford_moving = 0;
    for (int i = 0; i < 8; i += 2) {
      ford_moving |= GET_BYTE(to_push, i) | (GET_BYTE(to_push, (int)(i + 1)) & 0xFCU);
    }
  }


  if (addr == 0x83) {
    bool cancel = GET_BYTE(to_push, 1) & 0x1;
    bool set_or_resume = GET_BYTE(to_push, 3) & 0x30;
    if (cancel) {
      controls_allowed = 0;
    }
    if (set_or_resume) {
      controls_allowed = 1;
    }
  }



  if (addr == 0x165) {
    int brake = GET_BYTE(to_push, 0) & 0x20;
    if (brake && (!(ford_brake_prev) || ford_moving)) {
      controls_allowed = 0;
    }
    ford_brake_prev = brake;
  }


  if (addr == 0x204) {
    int gas = (GET_BYTE(to_push, 0) & 0x03) | GET_BYTE(to_push, 1);
    if (gas && !(ford_gas_prev)) {
      controls_allowed = 0;
    }
    ford_gas_prev = gas;
  }
}
