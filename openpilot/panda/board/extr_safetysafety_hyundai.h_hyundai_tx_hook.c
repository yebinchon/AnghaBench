
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CNT; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BYTES_04 (int *) ;
 int HYUNDAI_DRIVER_TORQUE_ALLOWANCE ;
 int HYUNDAI_DRIVER_TORQUE_FACTOR ;
 int HYUNDAI_MAX_RATE_DOWN ;
 int HYUNDAI_MAX_RATE_UP ;
 int HYUNDAI_MAX_RT_DELTA ;
 int HYUNDAI_MAX_STEER ;
 scalar_t__ HYUNDAI_RT_INTERVAL ;
 TYPE_1__* TIM2 ;
 scalar_t__ controls_allowed ;
 int driver_limit_check (int,int,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 scalar_t__ hyundai_camera_detected ;
 int hyundai_desired_torque_last ;
 int hyundai_rt_torque_last ;
 int hyundai_torque_driver ;
 scalar_t__ hyundai_ts_last ;
 int max_limit_check (int,int ,int ) ;
 int rt_rate_limit_check (int,int,int ) ;

__attribute__((used)) static int hyundai_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int addr = GET_ADDR(to_send);


  if (hyundai_camera_detected) {
    tx = 0;
  }


  if (addr == 832) {
    int desired_torque = ((GET_BYTES_04(to_send) >> 16) & 0x7ff) - 1024;
    uint32_t ts = TIM2->CNT;
    bool violation = 0;

    if (controls_allowed) {


      violation |= max_limit_check(desired_torque, HYUNDAI_MAX_STEER, -HYUNDAI_MAX_STEER);


      violation |= driver_limit_check(desired_torque, hyundai_desired_torque_last, &hyundai_torque_driver,
        HYUNDAI_MAX_STEER, HYUNDAI_MAX_RATE_UP, HYUNDAI_MAX_RATE_DOWN,
        HYUNDAI_DRIVER_TORQUE_ALLOWANCE, HYUNDAI_DRIVER_TORQUE_FACTOR);


      hyundai_desired_torque_last = desired_torque;


      violation |= rt_rate_limit_check(desired_torque, hyundai_rt_torque_last, HYUNDAI_MAX_RT_DELTA);


      uint32_t ts_elapsed = get_ts_elapsed(ts, hyundai_ts_last);
      if (ts_elapsed > HYUNDAI_RT_INTERVAL) {
        hyundai_rt_torque_last = desired_torque;
        hyundai_ts_last = ts;
      }
    }


    if (!controls_allowed && (desired_torque != 0)) {
      violation = 1;
    }


    if (violation || !controls_allowed) {
      hyundai_desired_torque_last = 0;
      hyundai_rt_torque_last = 0;
      hyundai_ts_last = ts;
    }

    if (violation) {
      tx = 0;
    }
  }
  return tx;
}
