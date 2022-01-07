
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
 int MSG_GRA_ACC_01 ;
 int MSG_HCA_01 ;
 TYPE_1__* TIM2 ;
 int VOLKSWAGEN_DRIVER_TORQUE_ALLOWANCE ;
 int VOLKSWAGEN_DRIVER_TORQUE_FACTOR ;
 int VOLKSWAGEN_MAX_RATE_DOWN ;
 int VOLKSWAGEN_MAX_RATE_UP ;
 int VOLKSWAGEN_MAX_RT_DELTA ;
 int VOLKSWAGEN_MAX_STEER ;
 scalar_t__ VOLKSWAGEN_RT_INTERVAL ;
 scalar_t__ controls_allowed ;
 int driver_limit_check (int,int,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 int max_limit_check (int,int ,int ) ;
 int rt_rate_limit_check (int,int,int ) ;
 int volkswagen_desired_torque_last ;
 int volkswagen_rt_torque_last ;
 int volkswagen_torque_driver ;
 scalar_t__ volkswagen_ts_last ;

__attribute__((used)) static int volkswagen_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {
  int addr = GET_ADDR(to_send);
  int bus = GET_BUS(to_send);
  int tx = 1;


  if (addr == MSG_HCA_01) {
    bool violation = 0;

    int desired_torque = GET_BYTE(to_send, 2) | ((GET_BYTE(to_send, 3) & 0x3F) << 8);
    int sign = (GET_BYTE(to_send, 3) & 0x80) >> 7;
    if (sign == 1) {
      desired_torque *= -1;
    }

    uint32_t ts = TIM2->CNT;

    if (controls_allowed) {


      violation |= max_limit_check(desired_torque, VOLKSWAGEN_MAX_STEER, -VOLKSWAGEN_MAX_STEER);


      violation |= driver_limit_check(desired_torque, volkswagen_desired_torque_last, &volkswagen_torque_driver,
        VOLKSWAGEN_MAX_STEER, VOLKSWAGEN_MAX_RATE_UP, VOLKSWAGEN_MAX_RATE_DOWN,
        VOLKSWAGEN_DRIVER_TORQUE_ALLOWANCE, VOLKSWAGEN_DRIVER_TORQUE_FACTOR);
      volkswagen_desired_torque_last = desired_torque;


      violation |= rt_rate_limit_check(desired_torque, volkswagen_rt_torque_last, VOLKSWAGEN_MAX_RT_DELTA);


      uint32_t ts_elapsed = get_ts_elapsed(ts, volkswagen_ts_last);
      if (ts_elapsed > VOLKSWAGEN_RT_INTERVAL) {
        volkswagen_rt_torque_last = desired_torque;
        volkswagen_ts_last = ts;
      }
    }


    if (!controls_allowed && (desired_torque != 0)) {
      violation = 1;
    }


    if (violation || !controls_allowed) {
      volkswagen_desired_torque_last = 0;
      volkswagen_rt_torque_last = 0;
      volkswagen_ts_last = ts;
    }

    if (violation) {
      tx = 0;
    }
  }



  if ((bus == 2) && (addr == MSG_GRA_ACC_01) && !controls_allowed) {

    if ((GET_BYTE(to_send, 2) & 0x9) != 0) {
      tx = 0;
    }
  }


  return tx;
}
