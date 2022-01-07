
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int min; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 int GET_INTERCEPTOR (int *) ;
 int TOYOTA_GAS_INTERCEPTOR_THRESHOLD ;
 int controls_allowed ;
 int gas_interceptor_detected ;
 int gas_interceptor_prev ;
 scalar_t__ long_controls_allowed ;
 int to_signed (int,int) ;
 int toyota_camera_forwarded ;
 int toyota_cruise_engaged_last ;
 int toyota_dbc_eps_torque_factor ;
 int toyota_gas_prev ;
 int toyota_giraffe_switch_1 ;
 TYPE_1__ toyota_torque_meas ;
 int update_sample (TYPE_1__*,int) ;

__attribute__((used)) static void toyota_rx_hook(CAN_FIFOMailBox_TypeDef *to_push) {

  int bus = GET_BUS(to_push);
  int addr = GET_ADDR(to_push);


  if (addr == 0x260) {
    int torque_meas_new = (GET_BYTE(to_push, 5) << 8) | GET_BYTE(to_push, 6);
    torque_meas_new = to_signed(torque_meas_new, 16);


    torque_meas_new = (torque_meas_new * toyota_dbc_eps_torque_factor) / 100;


    update_sample(&toyota_torque_meas, torque_meas_new);


    toyota_torque_meas.min--;
    toyota_torque_meas.max++;
  }


  if (addr == 0x1D2) {

    int cruise_engaged = GET_BYTE(to_push, 0) & 0x20;
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    if (cruise_engaged && !toyota_cruise_engaged_last) {
      controls_allowed = 1;
    }
    toyota_cruise_engaged_last = cruise_engaged;
  }


  if (addr == 0x201) {
    gas_interceptor_detected = 1;
    int gas_interceptor = GET_INTERCEPTOR(to_push);
    if ((gas_interceptor > TOYOTA_GAS_INTERCEPTOR_THRESHOLD) &&
        (gas_interceptor_prev <= TOYOTA_GAS_INTERCEPTOR_THRESHOLD) &&
        long_controls_allowed) {
      controls_allowed = 0;
    }
    gas_interceptor_prev = gas_interceptor;
  }


  if (addr == 0x2C1) {
    int gas = GET_BYTE(to_push, 6) & 0xFF;
    if ((gas > 0) && (toyota_gas_prev == 0) && !gas_interceptor_detected && long_controls_allowed) {
      controls_allowed = 0;
    }
    toyota_gas_prev = gas;
  }


  if (bus == 2) {
    toyota_camera_forwarded = 1;
  }


  if ((addr == 0x2E4) && (bus == 0)) {
    toyota_giraffe_switch_1 = 1;
  }
}
