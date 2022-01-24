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
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int controls_allowed ; 
 int hyundai_camera_bus ; 
 int hyundai_camera_detected ; 
 int hyundai_cruise_engaged_last ; 
 int hyundai_giraffe_switch_2 ; 
 int /*<<< orphan*/  hyundai_torque_driver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);

  if (addr == 897) {
    int torque_driver_new = ((FUNC2(to_push) >> 11) & 0xfff) - 2048;
    // update array of samples
    FUNC3(&hyundai_torque_driver, torque_driver_new);
  }

  // check if stock camera ECU is still online
  if ((bus == 0) && (addr == 832)) {
    hyundai_camera_detected = 1;
    controls_allowed = 0;
  }

  // Find out which bus the camera is on
  if (addr == 832) {
    hyundai_camera_bus = bus;
  }

  // enter controls on rising edge of ACC, exit controls on ACC off
  if (addr == 1057) {
    // 2 bits: 13-14
    int cruise_engaged = (FUNC2(to_push) >> 13) & 0x3;
    if (cruise_engaged && !hyundai_cruise_engaged_last) {
      controls_allowed = 1;
    }
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    hyundai_cruise_engaged_last = cruise_engaged;
  }

  // 832 is lkas cmd. If it is on camera bus, then giraffe switch 2 is high
  if ((addr == 832) && (bus == hyundai_camera_bus) && (hyundai_camera_bus != 0)) {
    hyundai_giraffe_switch_2 = 1;
  }
}