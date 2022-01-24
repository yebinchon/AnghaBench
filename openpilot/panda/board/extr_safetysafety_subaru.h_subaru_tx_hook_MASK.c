#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CNT; } ;
typedef  int /*<<< orphan*/  CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SUBARU_DRIVER_TORQUE_ALLOWANCE ; 
 int /*<<< orphan*/  SUBARU_DRIVER_TORQUE_FACTOR ; 
 int /*<<< orphan*/  SUBARU_MAX_RATE_DOWN ; 
 int /*<<< orphan*/  SUBARU_MAX_RATE_UP ; 
 int /*<<< orphan*/  SUBARU_MAX_RT_DELTA ; 
 int /*<<< orphan*/  SUBARU_MAX_STEER ; 
 scalar_t__ SUBARU_RT_INTERVAL ; 
 TYPE_1__* TIM2 ; 
 scalar_t__ controls_allowed ; 
 int FUNC2 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int subaru_desired_torque_last ; 
 int subaru_rt_torque_last ; 
 int /*<<< orphan*/  subaru_torque_driver ; 
 scalar_t__ subaru_ts_last ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(CAN_FIFOMailBox_TypeDef *to_send) {
  int tx = 1;
  int addr = FUNC0(to_send);

  // steer cmd checks
  if ((addr == 0x122) || (addr == 0x164)) {
    int bit_shift = (addr == 0x122) ? 16 : 8;
    int desired_torque = ((FUNC1(to_send) >> bit_shift) & 0x1FFF);
    bool violation = 0;
    uint32_t ts = TIM2->CNT;
    desired_torque = FUNC6(desired_torque, 13);

    if (controls_allowed) {

      // *** global torque limit check ***
      violation |= FUNC4(desired_torque, SUBARU_MAX_STEER, -SUBARU_MAX_STEER);

      // *** torque rate limit check ***
      int desired_torque_last = subaru_desired_torque_last;
      violation |= FUNC2(desired_torque, desired_torque_last, &subaru_torque_driver,
        SUBARU_MAX_STEER, SUBARU_MAX_RATE_UP, SUBARU_MAX_RATE_DOWN,
        SUBARU_DRIVER_TORQUE_ALLOWANCE, SUBARU_DRIVER_TORQUE_FACTOR);

      // used next time
      subaru_desired_torque_last = desired_torque;

      // *** torque real time rate limit check ***
      violation |= FUNC5(desired_torque, subaru_rt_torque_last, SUBARU_MAX_RT_DELTA);

      // every RT_INTERVAL set the new limits
      uint32_t ts_elapsed = FUNC3(ts, subaru_ts_last);
      if (ts_elapsed > SUBARU_RT_INTERVAL) {
        subaru_rt_torque_last = desired_torque;
        subaru_ts_last = ts;
      }
    }

    // no torque if controls is not allowed
    if (!controls_allowed && (desired_torque != 0)) {
      violation = 1;
    }

    // reset to 0 if either controls is not allowed or there's a violation
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