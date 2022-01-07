
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 int GET_BYTES_04 (int *) ;
 int MSG_ACC_06 ;
 int MSG_EPS_01 ;
 int MSG_MOTOR_20 ;
 int controls_allowed ;
 scalar_t__ long_controls_allowed ;
 int update_sample (int *,int) ;
 int volkswagen_gas_prev ;
 int volkswagen_torque_driver ;

__attribute__((used)) static void volkswagen_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);



  if ((bus == 0) && (addr == MSG_EPS_01)) {
    int torque_driver_new = GET_BYTE(to_push, 5) | ((GET_BYTE(to_push, 6) & 0x1F) << 8);
    int sign = (GET_BYTE(to_push, 6) & 0x80) >> 7;
    if (sign == 1) {
      torque_driver_new *= -1;
    }

    update_sample(&volkswagen_torque_driver, torque_driver_new);
  }




  if (addr == MSG_ACC_06) {
    int acc_status = (GET_BYTE(to_push, 7) & 0x70) >> 4;
    controls_allowed = ((acc_status == 3) || (acc_status == 4) || (acc_status == 5)) ? 1 : 0;
  }


  if (addr == MSG_MOTOR_20) {
    int gas = (GET_BYTES_04(to_push) >> 12) & 0xFF;
    if ((gas > 0) && (volkswagen_gas_prev == 0) && long_controls_allowed) {
      controls_allowed = 0;
    }
    volkswagen_gas_prev = gas;
  }
}
