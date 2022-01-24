#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int MSG_ACC_06 ; 
 int MSG_EPS_01 ; 
 int MSG_MOTOR_20 ; 
 int controls_allowed ; 
 scalar_t__ long_controls_allowed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int volkswagen_gas_prev ; 
 int /*<<< orphan*/  volkswagen_torque_driver ; 

__attribute__((used)) static void FUNC5(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);

  // Update driver input torque samples from EPS_01.Driver_Strain for absolute torque, and EPS_01.Driver_Strain_VZ
  // for the direction.
  if ((bus == 0) && (addr == MSG_EPS_01)) {
    int torque_driver_new = FUNC2(to_push, 5) | ((FUNC2(to_push, 6) & 0x1F) << 8);
    int sign = (FUNC2(to_push, 6) & 0x80) >> 7;
    if (sign == 1) {
      torque_driver_new *= -1;
    }

    FUNC4(&volkswagen_torque_driver, torque_driver_new);
  }

  // Monitor ACC_06.ACC_Status_ACC for stock ACC status. Because the current MQB port is lateral-only, OP's control
  // allowed state is directly driven by stock ACC engagement. Permit the ACC message to come from either bus, in
  // order to accommodate future camera-side integrations if needed.
  if (addr == MSG_ACC_06) {
    int acc_status = (FUNC2(to_push, 7) & 0x70) >> 4;
    controls_allowed = ((acc_status == 3) || (acc_status == 4) || (acc_status == 5)) ? 1 : 0;
  }

  // exit controls on rising edge of gas press. Bits [12-20)
  if (addr == MSG_MOTOR_20) {
    int gas = (FUNC3(to_push) >> 12) & 0xFF;
    if ((gas > 0) && (volkswagen_gas_prev == 0) && long_controls_allowed) {
      controls_allowed = 0;
    }
    volkswagen_gas_prev = gas;
  }
}