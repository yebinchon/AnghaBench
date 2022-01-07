
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
 int SUBARU_DRIVER_TORQUE_ALLOWANCE ;
 int SUBARU_DRIVER_TORQUE_FACTOR ;
 int SUBARU_MAX_RATE_DOWN ;
 int SUBARU_MAX_RATE_UP ;
 int SUBARU_MAX_RT_DELTA ;
 int SUBARU_MAX_STEER ;
 scalar_t__ SUBARU_RT_INTERVAL ;
 TYPE_1__* TIM2 ;
 scalar_t__ controls_allowed ;
 int driver_limit_check (int,int,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 int max_limit_check (int,int ,int ) ;
 int rt_rate_limit_check (int,int,int ) ;
 int subaru_desired_torque_last ;
 int subaru_rt_torque_last ;
 int subaru_torque_driver ;
 scalar_t__ subaru_ts_last ;
 int to_signed (int,int) ;

__attribute__((used)) static int subaru_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {
  int tx = 1;
  int addr = GET_ADDR(to_send);


  if ((addr == 0x122) || (addr == 0x164)) {
    int bit_shift = (addr == 0x122) ? 16 : 8;
    int desired_torque = ((GET_BYTES_04(to_send) >> bit_shift) & 0x1FFF);
    bool violation = 0;
    uint32_t ts = TIM2->CNT;
    desired_torque = to_signed(desired_torque, 13);

    if (controls_allowed) {


      violation |= max_limit_check(desired_torque, SUBARU_MAX_STEER, -SUBARU_MAX_STEER);


      int desired_torque_last = subaru_desired_torque_last;
      violation |= driver_limit_check(desired_torque, desired_torque_last, &subaru_torque_driver,
        SUBARU_MAX_STEER, SUBARU_MAX_RATE_UP, SUBARU_MAX_RATE_DOWN,
        SUBARU_DRIVER_TORQUE_ALLOWANCE, SUBARU_DRIVER_TORQUE_FACTOR);


      subaru_desired_torque_last = desired_torque;


      violation |= rt_rate_limit_check(desired_torque, subaru_rt_torque_last, SUBARU_MAX_RT_DELTA);


      uint32_t ts_elapsed = get_ts_elapsed(ts, subaru_ts_last);
      if (ts_elapsed > SUBARU_RT_INTERVAL) {
        subaru_rt_torque_last = desired_torque;
        subaru_ts_last = ts;
      }
    }


    if (!controls_allowed && (desired_torque != 0)) {
      violation = 1;
    }


    if (violation || !controls_allowed) {
      subaru_desired_torque_last = 0;
      subaru_rt_torque_last = 0;
      subaru_ts_last = ts;
    }

    if (violation) {
      tx = 0;
    }

  }
  return tx;
}
