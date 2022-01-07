
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
 TYPE_1__* TIM2 ;
 int TOYOTA_MAX_ACCEL ;
 int TOYOTA_MAX_RATE_DOWN ;
 int TOYOTA_MAX_RATE_UP ;
 int TOYOTA_MAX_RT_DELTA ;
 int TOYOTA_MAX_TORQUE ;
 int TOYOTA_MAX_TORQUE_ERROR ;
 int TOYOTA_MIN_ACCEL ;
 scalar_t__ TOYOTA_RT_INTERVAL ;
 scalar_t__ controls_allowed ;
 int dist_to_meas_check (int,int,int *,int ,int ,int ) ;
 scalar_t__ get_ts_elapsed (scalar_t__,scalar_t__) ;
 int long_controls_allowed ;
 int max_limit_check (int,int ,int ) ;
 int rt_rate_limit_check (int,int,int ) ;
 int to_signed (int,int) ;
 int toyota_desired_torque_last ;
 int toyota_rt_torque_last ;
 int toyota_torque_meas ;
 scalar_t__ toyota_ts_last ;

__attribute__((used)) static int toyota_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int addr = GET_ADDR(to_send);
  int bus = GET_BUS(to_send);


  if (bus == 0) {


    if ((addr == 0x266) || (addr == 0x167)) {
      tx = 0;
    }


    if (addr == 0x200) {
      if (!controls_allowed || !long_controls_allowed) {
        if (GET_BYTE(to_send, 0) || GET_BYTE(to_send, 1)) {
          tx = 0;
        }
      }
    }


    if (addr == 0x343) {
      int desired_accel = (GET_BYTE(to_send, 0) << 8) | GET_BYTE(to_send, 1);
      desired_accel = to_signed(desired_accel, 16);
      if (!controls_allowed || !long_controls_allowed) {
        if (desired_accel != 0) {
          tx = 0;
        }
      }
      bool violation = max_limit_check(desired_accel, TOYOTA_MAX_ACCEL, TOYOTA_MIN_ACCEL);
      if (violation) {
        tx = 0;
      }
    }


    if (addr == 0x2E4) {
      int desired_torque = (GET_BYTE(to_send, 1) << 8) | GET_BYTE(to_send, 2);
      desired_torque = to_signed(desired_torque, 16);
      bool violation = 0;

      uint32_t ts = TIM2->CNT;

      if (controls_allowed) {


        violation |= max_limit_check(desired_torque, TOYOTA_MAX_TORQUE, -TOYOTA_MAX_TORQUE);


        violation |= dist_to_meas_check(desired_torque, toyota_desired_torque_last,
          &toyota_torque_meas, TOYOTA_MAX_RATE_UP, TOYOTA_MAX_RATE_DOWN, TOYOTA_MAX_TORQUE_ERROR);


        toyota_desired_torque_last = desired_torque;


        violation |= rt_rate_limit_check(desired_torque, toyota_rt_torque_last, TOYOTA_MAX_RT_DELTA);


        uint32_t ts_elapsed = get_ts_elapsed(ts, toyota_ts_last);
        if (ts_elapsed > TOYOTA_RT_INTERVAL) {
          toyota_rt_torque_last = desired_torque;
          toyota_ts_last = ts;
        }
      }


      if (!controls_allowed && (desired_torque != 0)) {
        violation = 1;
      }


      if (violation || !controls_allowed) {
        toyota_desired_torque_last = 0;
        toyota_rt_torque_last = 0;
        toyota_ts_last = ts;
      }

      if (violation) {
        tx = 0;
      }
    }
  }


  return tx;
}
