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
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TESLA_LOOKUP_ANGLE_RATE_DOWN ; 
 int /*<<< orphan*/  TESLA_LOOKUP_ANGLE_RATE_UP ; 
 int /*<<< orphan*/  TESLA_LOOKUP_MAX_ANGLE ; 
 scalar_t__ controls_allowed ; 
 int FUNC2 (float,float,float) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tesla_desired_angle_last ; 
 int /*<<< orphan*/  tesla_speed ; 

__attribute__((used)) static int FUNC4(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int addr = FUNC0(to_send);

  // do not transmit CAN message if steering angle too high
  // DAS_steeringControl::DAS_steeringAngleRequest
  if (addr == 0x488) {
    float angle_raw = ((FUNC1(to_send, 0) & 0x7F) << 8) + FUNC1(to_send, 1);
    float desired_angle = (angle_raw * 0.1) - 1638.35;
    bool violation = 0;
    int st_enabled = FUNC1(to_send, 2) & 0x40;

    if (st_enabled == 0) {
      //steering is not enabled, do not check angles and do send
      tesla_desired_angle_last = desired_angle;
    } else if (controls_allowed) {
      // add 1 to not false trigger the violation
      float delta_angle_up = FUNC3(TESLA_LOOKUP_ANGLE_RATE_UP, tesla_speed) + 1.;
      float delta_angle_down = FUNC3(TESLA_LOOKUP_ANGLE_RATE_DOWN, tesla_speed) + 1.;
      float highest_desired_angle = tesla_desired_angle_last + ((tesla_desired_angle_last > 0.) ? delta_angle_up : delta_angle_down);
      float lowest_desired_angle = tesla_desired_angle_last - ((tesla_desired_angle_last > 0.) ? delta_angle_down : delta_angle_up);
      float TESLA_MAX_ANGLE = FUNC3(TESLA_LOOKUP_MAX_ANGLE, tesla_speed) + 1.;

      //check for max angles
      violation |= FUNC2(desired_angle, TESLA_MAX_ANGLE, -TESLA_MAX_ANGLE);

      //check for angle delta changes
      violation |= FUNC2(desired_angle, highest_desired_angle, lowest_desired_angle);

      if (violation) {
        controls_allowed = 0;
        tx = 0;
      }
      tesla_desired_angle_last = desired_angle;
    } else {
      tx = 0;
    }
  }
  return tx;
}