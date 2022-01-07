
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CNT; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int CHRYSLER_MAX_RATE_DOWN ;
 int CHRYSLER_MAX_RATE_UP ;
 int CHRYSLER_MAX_RT_DELTA ;
 int CHRYSLER_MAX_STEER ;
 int CHRYSLER_MAX_TORQUE_ERROR ;
 scalar_t__ CHRYSLER_RT_INTERVAL ;
 int GET_ADDR (int *) ;
 int GET_BYTE (int *,int) ;
 TYPE_1__* TIM2 ;
 scalar_t__ chrysler_camera_detected ;
 int chrysler_desired_torque_last ;
 int chrysler_rt_torque_last ;
 int chrysler_torque_meas ;
 scalar_t__ chrysler_ts_last ;
 scalar_t__ controls_allowed ;
 int dist_to_meas_check (int,int,int *,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 int max_limit_check (int,int ,int ) ;
 int rt_rate_limit_check (int,int,int ) ;

__attribute__((used)) static int chrysler_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;


  if (chrysler_camera_detected) {
    tx = 0;
  }

  int addr = GET_ADDR(to_send);


  if (addr == 0x292) {
    int desired_torque = ((GET_BYTE(to_send, 0) & 0x7U) << 8) + GET_BYTE(to_send, 1) - 1024U;
    uint32_t ts = TIM2->CNT;
    bool violation = 0;

    if (controls_allowed) {


      violation |= max_limit_check(desired_torque, CHRYSLER_MAX_STEER, -CHRYSLER_MAX_STEER);


      violation |= dist_to_meas_check(desired_torque, chrysler_desired_torque_last,
        &chrysler_torque_meas, CHRYSLER_MAX_RATE_UP, CHRYSLER_MAX_RATE_DOWN, CHRYSLER_MAX_TORQUE_ERROR);


      chrysler_desired_torque_last = desired_torque;


      violation |= rt_rate_limit_check(desired_torque, chrysler_rt_torque_last, CHRYSLER_MAX_RT_DELTA);


      uint32_t ts_elapsed = get_ts_elapsed(ts, chrysler_ts_last);
      if (ts_elapsed > CHRYSLER_RT_INTERVAL) {
        chrysler_rt_torque_last = desired_torque;
        chrysler_ts_last = ts;
      }
    }


    if (!controls_allowed && (desired_torque != 0)) {
      violation = 1;
    }


    if (violation || !controls_allowed) {
      chrysler_desired_torque_last = 0;
      chrysler_rt_torque_last = 0;
      chrysler_ts_last = ts;
    }

    if (violation) {
      tx = 0;
    }
  }







  return tx;
}
