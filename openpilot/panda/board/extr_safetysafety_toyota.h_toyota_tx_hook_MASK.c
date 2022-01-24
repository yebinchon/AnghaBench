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
 TYPE_1__* TIM2 ; 
 int /*<<< orphan*/  TOYOTA_MAX_ACCEL ; 
 int /*<<< orphan*/  TOYOTA_MAX_RATE_DOWN ; 
 int /*<<< orphan*/  TOYOTA_MAX_RATE_UP ; 
 int /*<<< orphan*/  TOYOTA_MAX_RT_DELTA ; 
 int /*<<< orphan*/  TOYOTA_MAX_TORQUE ; 
 int /*<<< orphan*/  TOYOTA_MAX_TORQUE_ERROR ; 
 int /*<<< orphan*/  TOYOTA_MIN_ACCEL ; 
 scalar_t__ TOYOTA_RT_INTERVAL ; 
 scalar_t__ controls_allowed ; 
 int FUNC3 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  long_controls_allowed ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int toyota_desired_torque_last ; 
 int toyota_rt_torque_last ; 
 int /*<<< orphan*/  toyota_torque_meas ; 
 scalar_t__ toyota_ts_last ; 

__attribute__((used)) static int FUNC8(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int addr = FUNC0(to_send);
  int bus = FUNC1(to_send);

  // Check if msg is sent on BUS 0
  if (bus == 0) {

    // no IPAS in non IPAS mode
    if ((addr == 0x266) || (addr == 0x167)) {
      tx = 0;
    }

    // GAS PEDAL: safety check
    if (addr == 0x200) {
      if (!controls_allowed || !long_controls_allowed) {
        if (FUNC2(to_send, 0) || FUNC2(to_send, 1)) {
          tx = 0;
        }
      }
    }

    // ACCEL: safety check on byte 1-2
    if (addr == 0x343) {
      int desired_accel = (FUNC2(to_send, 0) << 8) | FUNC2(to_send, 1);
      desired_accel = FUNC7(desired_accel, 16);
      if (!controls_allowed || !long_controls_allowed) {
        if (desired_accel != 0) {
          tx = 0;
        }
      }
      bool violation = FUNC5(desired_accel, TOYOTA_MAX_ACCEL, TOYOTA_MIN_ACCEL);
      if (violation) {
        tx = 0;
      }
    }

    // STEER: safety check on bytes 2-3
    if (addr == 0x2E4) {
      int desired_torque = (FUNC2(to_send, 1) << 8) | FUNC2(to_send, 2);
      desired_torque = FUNC7(desired_torque, 16);
      bool violation = 0;

      uint32_t ts = TIM2->CNT;

      if (controls_allowed) {

        // *** global torque limit check ***
        violation |= FUNC5(desired_torque, TOYOTA_MAX_TORQUE, -TOYOTA_MAX_TORQUE);

        // *** torque rate limit check ***
        violation |= FUNC3(desired_torque, toyota_desired_torque_last,
          &toyota_torque_meas, TOYOTA_MAX_RATE_UP, TOYOTA_MAX_RATE_DOWN, TOYOTA_MAX_TORQUE_ERROR);

        // used next time
        toyota_desired_torque_last = desired_torque;

        // *** torque real time rate limit check ***
        violation |= FUNC6(desired_torque, toyota_rt_torque_last, TOYOTA_MAX_RT_DELTA);

        // every RT_INTERVAL set the new limits
        uint32_t ts_elapsed = FUNC4(ts, toyota_ts_last);
        if (ts_elapsed > TOYOTA_RT_INTERVAL) {
          toyota_rt_torque_last = desired_torque;
          toyota_ts_last = ts;
        }
      }

      // no torque if controls is not allowed
      if (!controls_allowed && (desired_torque != 0)) {
        violation = 1;
      }

      // reset to 0 if either controls is not allowed or there's a violation
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

  // 1 allows the message through
  return tx;
}