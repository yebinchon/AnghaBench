
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CNT; } ;
typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_BUS (int *) ;
 int GET_BYTE (int *,int) ;
 int MAZDA_DRIVER_TORQUE_ALLOWANCE ;
 int MAZDA_DRIVER_TORQUE_FACTOR ;
 int MAZDA_LANEINFO ;
 int MAZDA_LKAS ;
 int MAZDA_MAIN ;
 int MAZDA_MAX_RATE_DOWN ;
 int MAZDA_MAX_RATE_UP ;
 int MAZDA_MAX_RT_DELTA ;
 int MAZDA_MAX_STEER ;
 scalar_t__ MAZDA_RT_INTERVAL ;
 TYPE_1__* TIM2 ;
 scalar_t__ controls_allowed ;
 int driver_limit_check (int,int,int *,int,int ,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 int max_limit_check (int,int,int) ;
 int mazda_desired_torque_last ;
 int mazda_op_laneinfo_detected ;
 int mazda_op_lkas_detected ;
 int mazda_rt_torque_last ;
 int mazda_torque_driver ;
 scalar_t__ mazda_ts_last ;
 int rt_rate_limit_check (int,int,int ) ;

__attribute__((used)) static int mazda_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {
  int tx = 1;
  int addr = GET_ADDR(to_send);
  int bus = GET_BUS(to_send);


  if (bus == MAZDA_MAIN) {
    if ((addr == MAZDA_LKAS) && !mazda_op_lkas_detected){
      mazda_op_lkas_detected = 1;
    }
    if ((addr == MAZDA_LANEINFO) && !mazda_op_laneinfo_detected){
      mazda_op_laneinfo_detected = 1;
    }


    if (addr == MAZDA_LKAS) {
      int desired_torque = (((GET_BYTE(to_send, 0) & 0x0f) << 8) | GET_BYTE(to_send, 1)) - MAZDA_MAX_STEER;
      bool violation = 0;
      uint32_t ts = TIM2->CNT;

      if (controls_allowed) {


 violation |= max_limit_check(desired_torque, MAZDA_MAX_STEER, -MAZDA_MAX_STEER);


 int desired_torque_last = mazda_desired_torque_last;
 violation |= driver_limit_check(desired_torque, desired_torque_last, &mazda_torque_driver,
     MAZDA_MAX_STEER, MAZDA_MAX_RATE_UP, MAZDA_MAX_RATE_DOWN,
     MAZDA_DRIVER_TORQUE_ALLOWANCE, MAZDA_DRIVER_TORQUE_FACTOR);

 mazda_desired_torque_last = desired_torque;


 violation |= rt_rate_limit_check(desired_torque, mazda_rt_torque_last, MAZDA_MAX_RT_DELTA);


 uint32_t ts_elapsed = get_ts_elapsed(ts, mazda_ts_last);
 if (ts_elapsed > ((uint32_t) MAZDA_RT_INTERVAL)) {
   mazda_rt_torque_last = desired_torque;
   mazda_ts_last = ts;
 }
      }


      if (!controls_allowed && (desired_torque != 0)) {
 violation = 1;
      }


      if (violation || !controls_allowed) {
 mazda_desired_torque_last = 0;
 mazda_rt_torque_last = 0;
 mazda_ts_last = ts;
      }

      if (violation) {
 tx = 0;
      }
    }
  }
  return tx;
}
