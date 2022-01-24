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
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAZDA_CAM ; 
 int MAZDA_CRZ_CTRL ; 
 int MAZDA_LKAS ; 
 int MAZDA_MAIN ; 
 int MAZDA_STEER_TORQUE ; 
 int MAZDA_WHEEL_SPEED ; 
 int controls_allowed ; 
 int mazda_cruise_engaged_last ; 
 int mazda_forward_cam ; 
 int mazda_giraffe_switch_2_on ; 
 int /*<<< orphan*/  mazda_torque_driver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);

  if ((addr == MAZDA_STEER_TORQUE) && (bus == MAZDA_MAIN)) {
    int torque_driver_new = FUNC2(to_push, 0) - 127;
    // update array of samples
    FUNC3(&mazda_torque_driver, torque_driver_new);
  }

  // enter controls on rising edge of ACC, exit controls on ACC off
  if ((addr == MAZDA_CRZ_CTRL) && (bus == MAZDA_MAIN)) {
    int cruise_engaged = FUNC2(to_push, 0) & 8;
    if (cruise_engaged != 0) {
      if (!mazda_cruise_engaged_last) {
	controls_allowed = 1;
      }
    }
    else {
      controls_allowed = 0;
    }
    mazda_cruise_engaged_last = cruise_engaged;
  }

  // we have msgs on bus MAZDA_CAM
  if (bus == MAZDA_CAM) {
    // the stock CAM is connected
    if (addr == MAZDA_LKAS) {
      mazda_forward_cam = 1;
    }
    // if we see wheel speed msgs on MAZDA_CAM bus then giraffe switch 2 is high
    // (hardware passthru)
    if (addr == MAZDA_WHEEL_SPEED) {
      mazda_giraffe_switch_2_on = 1;
    }
  }
}