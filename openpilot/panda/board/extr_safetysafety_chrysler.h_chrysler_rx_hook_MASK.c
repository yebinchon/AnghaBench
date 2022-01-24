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
 int chrysler_camera_detected ; 
 int chrysler_cruise_engaged_last ; 
 int /*<<< orphan*/  chrysler_torque_meas ; 
 int controls_allowed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);

  // Measured eps torque
  if (addr == 544) {
    int torque_meas_new = ((FUNC2(to_push, 4) & 0x7U) << 8) + FUNC2(to_push, 5) - 1024U;

    // update array of samples
    FUNC3(&chrysler_torque_meas, torque_meas_new);
  }

  // enter controls on rising edge of ACC, exit controls on ACC off
  if (addr == 0x1F4) {
    int cruise_engaged = ((FUNC2(to_push, 2) & 0x38) >> 3) == 7;
    if (cruise_engaged && !chrysler_cruise_engaged_last) {
      controls_allowed = 1;
    }
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    chrysler_cruise_engaged_last = cruise_engaged;
  }

  // check if stock camera ECU is still online
  if ((bus == 0) && (addr == 0x292)) {
    chrysler_camera_detected = 1;
    controls_allowed = 0;
  }
}