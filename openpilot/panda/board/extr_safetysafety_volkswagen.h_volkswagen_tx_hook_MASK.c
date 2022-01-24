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
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int MSG_GRA_ACC_01 ; 
 int MSG_HCA_01 ; 
 TYPE_1__* TIM2 ; 
 int /*<<< orphan*/  VOLKSWAGEN_DRIVER_TORQUE_ALLOWANCE ; 
 int /*<<< orphan*/  VOLKSWAGEN_DRIVER_TORQUE_FACTOR ; 
 int /*<<< orphan*/  VOLKSWAGEN_MAX_RATE_DOWN ; 
 int /*<<< orphan*/  VOLKSWAGEN_MAX_RATE_UP ; 
 int /*<<< orphan*/  VOLKSWAGEN_MAX_RT_DELTA ; 
 int /*<<< orphan*/  VOLKSWAGEN_MAX_STEER ; 
 scalar_t__ VOLKSWAGEN_RT_INTERVAL ; 
 scalar_t__ controls_allowed ; 
 int FUNC3 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int volkswagen_desired_torque_last ; 
 int volkswagen_rt_torque_last ; 
 int /*<<< orphan*/  volkswagen_torque_driver ; 
 scalar_t__ volkswagen_ts_last ; 

__attribute__((used)) static int FUNC7(CAN_FIFOMailBox_TypeDef *to_send) {
  int addr = FUNC0(to_send);
  int bus = FUNC1(to_send);
  int tx = 1;

  // Safety check for HCA_01 Heading Control Assist torque.
  if (addr == MSG_HCA_01) {
    bool violation = false;

    int desired_torque = FUNC2(to_send, 2) | ((FUNC2(to_send, 3) & 0x3F) << 8);
    int sign = (FUNC2(to_send, 3) & 0x80) >> 7;
    if (sign == 1) {
      desired_torque *= -1;
    }

    uint32_t ts = TIM2->CNT;

    if (controls_allowed) {

      // *** global torque limit check ***
      violation |= FUNC5(desired_torque, VOLKSWAGEN_MAX_STEER, -VOLKSWAGEN_MAX_STEER);

      // *** torque rate limit check ***
      violation |= FUNC3(desired_torque, volkswagen_desired_torque_last, &volkswagen_torque_driver,
        VOLKSWAGEN_MAX_STEER, VOLKSWAGEN_MAX_RATE_UP, VOLKSWAGEN_MAX_RATE_DOWN,
        VOLKSWAGEN_DRIVER_TORQUE_ALLOWANCE, VOLKSWAGEN_DRIVER_TORQUE_FACTOR);
      volkswagen_desired_torque_last = desired_torque;

      // *** torque real time rate limit check ***
      violation |= FUNC6(desired_torque, volkswagen_rt_torque_last, VOLKSWAGEN_MAX_RT_DELTA);

      // every RT_INTERVAL set the new limits
      uint32_t ts_elapsed = FUNC4(ts, volkswagen_ts_last);
      if (ts_elapsed > VOLKSWAGEN_RT_INTERVAL) {
        volkswagen_rt_torque_last = desired_torque;
        volkswagen_ts_last = ts;
      }
    }

    // no torque if controls is not allowed
    if (!controls_allowed && (desired_torque != 0)) {
      violation = true;
    }

    // reset to 0 if either controls is not allowed or there's a violation
    if (violation || !controls_allowed) {
      volkswagen_desired_torque_last = 0;
      volkswagen_rt_torque_last = 0;
      volkswagen_ts_last = ts;
    }

    if (violation) {
      tx = 0;
    }
  }

  // FORCE CANCEL: ensuring that only the cancel button press is sent when controls are off.
  // This avoids unintended engagements while still allowing resume spam
  if ((bus == 2) && (addr == MSG_GRA_ACC_01) && !controls_allowed) {
    // disallow resume and set: bits 16 and 19
    if ((FUNC2(to_send, 2) & 0x9) != 0) {
      tx = 0;
    }
  }

  // 1 allows the message through
  return tx;
}