#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  int /*<<< orphan*/  CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int TOYOTA_GAS_INTERCEPTOR_THRESHOLD ; 
 int controls_allowed ; 
 int gas_interceptor_detected ; 
 int gas_interceptor_prev ; 
 scalar_t__ long_controls_allowed ; 
 int FUNC4 (int,int) ; 
 int toyota_camera_forwarded ; 
 int toyota_cruise_engaged_last ; 
 int toyota_dbc_eps_torque_factor ; 
 int toyota_gas_prev ; 
 int toyota_giraffe_switch_1 ; 
 TYPE_1__ toyota_torque_meas ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC6(CAN_FIFOMailBox_TypeDef *to_push) {

  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);

  // get eps motor torque (0.66 factor in dbc)
  if (addr == 0x260) {
    int torque_meas_new = (FUNC2(to_push, 5) << 8) | FUNC2(to_push, 6);
    torque_meas_new = FUNC4(torque_meas_new, 16);

    // scale by dbc_factor
    torque_meas_new = (torque_meas_new * toyota_dbc_eps_torque_factor) / 100;

    // update array of sample
    FUNC5(&toyota_torque_meas, torque_meas_new);

    // increase torque_meas by 1 to be conservative on rounding
    toyota_torque_meas.min--;
    toyota_torque_meas.max++;
  }

  // enter controls on rising edge of ACC, exit controls on ACC off
  if (addr == 0x1D2) {
    // 5th bit is CRUISE_ACTIVE
    int cruise_engaged = FUNC2(to_push, 0) & 0x20;
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    if (cruise_engaged && !toyota_cruise_engaged_last) {
      controls_allowed = 1;
    }
    toyota_cruise_engaged_last = cruise_engaged;
  }

  // exit controls on rising edge of interceptor gas press
  if (addr == 0x201) {
    gas_interceptor_detected = 1;
    int gas_interceptor = FUNC3(to_push);
    if ((gas_interceptor > TOYOTA_GAS_INTERCEPTOR_THRESHOLD) &&
        (gas_interceptor_prev <= TOYOTA_GAS_INTERCEPTOR_THRESHOLD) &&
        long_controls_allowed) {
      controls_allowed = 0;
    }
    gas_interceptor_prev = gas_interceptor;
  }

  // exit controls on rising edge of gas press
  if (addr == 0x2C1) {
    int gas = FUNC2(to_push, 6) & 0xFF;
    if ((gas > 0) && (toyota_gas_prev == 0) && !gas_interceptor_detected && long_controls_allowed) {
      controls_allowed = 0;
    }
    toyota_gas_prev = gas;
  }

  // msgs are only on bus 2 if panda is connected to frc
  if (bus == 2) {
    toyota_camera_forwarded = 1;
  }

  // 0x2E4 is lkas cmd. If it is on bus 0, then giraffe switch 1 is high
  if ((addr == 0x2E4) && (bus == 0)) {
    toyota_giraffe_switch_1 = 1;
  }
}