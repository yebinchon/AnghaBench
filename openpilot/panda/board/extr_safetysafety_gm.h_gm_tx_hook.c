
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CNT; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 unsigned int GET_BYTE (int *,int) ;
 int GM_DRIVER_TORQUE_ALLOWANCE ;
 int GM_DRIVER_TORQUE_FACTOR ;
 int GM_MAX_BRAKE ;
 int GM_MAX_GAS ;
 int GM_MAX_RATE_DOWN ;
 int GM_MAX_RATE_UP ;
 int GM_MAX_REGEN ;
 int GM_MAX_RT_DELTA ;
 int GM_MAX_STEER ;
 scalar_t__ GM_RT_INTERVAL ;
 TYPE_1__* TIM2 ;
 scalar_t__ controls_allowed ;
 int driver_limit_check (int,int,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 scalar_t__ gm_ascm_detected ;
 scalar_t__ gm_brake_prev ;
 int gm_desired_torque_last ;
 scalar_t__ gm_gas_prev ;
 scalar_t__ gm_moving ;
 int gm_rt_torque_last ;
 int gm_torque_driver ;
 scalar_t__ gm_ts_last ;
 int long_controls_allowed ;
 int max_limit_check (int,int ,int ) ;
 int rt_rate_limit_check (int,int,int ) ;
 int to_signed (int,int) ;

__attribute__((used)) static int gm_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;


  if (gm_ascm_detected) {
    tx = 0;
  }



  int pedal_pressed = gm_gas_prev || (gm_brake_prev && gm_moving);
  bool current_controls_allowed = controls_allowed && !pedal_pressed;

  int addr = GET_ADDR(to_send);


  if (addr == 789) {
    int brake = ((GET_BYTE(to_send, 0) & 0xFU) << 8) + GET_BYTE(to_send, 1);
    brake = (0x1000 - brake) & 0xFFF;
    if (!current_controls_allowed || !long_controls_allowed) {
      if (brake != 0) {
        tx = 0;
      }
    }
    if (brake > GM_MAX_BRAKE) {
      tx = 0;
    }
  }


  if (addr == 384) {
    int desired_torque = ((GET_BYTE(to_send, 0) & 0x7U) << 8) + GET_BYTE(to_send, 1);
    uint32_t ts = TIM2->CNT;
    bool violation = 0;
    desired_torque = to_signed(desired_torque, 11);

    if (current_controls_allowed) {


      violation |= max_limit_check(desired_torque, GM_MAX_STEER, -GM_MAX_STEER);


      violation |= driver_limit_check(desired_torque, gm_desired_torque_last, &gm_torque_driver,
        GM_MAX_STEER, GM_MAX_RATE_UP, GM_MAX_RATE_DOWN,
        GM_DRIVER_TORQUE_ALLOWANCE, GM_DRIVER_TORQUE_FACTOR);


      gm_desired_torque_last = desired_torque;


      violation |= rt_rate_limit_check(desired_torque, gm_rt_torque_last, GM_MAX_RT_DELTA);


      uint32_t ts_elapsed = get_ts_elapsed(ts, gm_ts_last);
      if (ts_elapsed > GM_RT_INTERVAL) {
        gm_rt_torque_last = desired_torque;
        gm_ts_last = ts;
      }
    }


    if (!current_controls_allowed && (desired_torque != 0)) {
      violation = 1;
    }


    if (violation || !current_controls_allowed) {
      gm_desired_torque_last = 0;
      gm_rt_torque_last = 0;
      gm_ts_last = ts;
    }

    if (violation) {
      tx = 0;
    }
  }


  if (addr == 823) {
    tx = 0;
  }


  if (addr == 715) {
    int gas_regen = ((GET_BYTE(to_send, 2) & 0x7FU) << 5) + ((GET_BYTE(to_send, 3) & 0xF8U) >> 3);


    if (!current_controls_allowed || !long_controls_allowed) {
      bool apply = GET_BYTE(to_send, 0) & 1U;
      if (apply || (gas_regen != GM_MAX_REGEN)) {
        tx = 0;
      }
    }
    if (gas_regen > GM_MAX_GAS) {
      tx = 0;
    }
  }


  return tx;
}
