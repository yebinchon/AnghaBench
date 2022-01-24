#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int int16_t ;
struct TYPE_6__ {scalar_t__ CNT; } ;
struct TYPE_5__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  int /*<<< orphan*/  CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int CAN_TO_DEG ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  LOOKUP_ANGLE_RATE_DOWN ; 
 int /*<<< orphan*/  LOOKUP_ANGLE_RATE_UP ; 
 int RT_ANGLE_FUDGE ; 
 TYPE_4__* TIM2 ; 
 int /*<<< orphan*/  TOYOTA_IPAS_OVERRIDE_THRESHOLD ; 
 scalar_t__ TOYOTA_RT_INTERVAL ; 
 scalar_t__ angle_control ; 
 TYPE_1__ angle_meas ; 
 scalar_t__ controls_allowed ; 
 scalar_t__ controls_allowed_last ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,float) ; 
 int ipas_state ; 
 int rt_angle_last ; 
 float speed ; 
 int FUNC4 (int,int) ; 
 TYPE_1__ torque_driver ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ ts_angle_last ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC7(CAN_FIFOMailBox_TypeDef *to_push) {
  // check standard toyota stuff as well
  FUNC5(to_push);

  int addr = FUNC0(to_push);

  if (addr == 0x260) {
    // get driver steering torque
    int16_t torque_driver_new = (FUNC1(to_push, 1) << 8) | FUNC1(to_push, 2);

    // update array of samples
    FUNC6(&torque_driver, torque_driver_new);
  }

  // get steer angle
  if (addr == 0x25) {
    int angle_meas_new = ((FUNC1(to_push, 0) & 0xF) << 8) | FUNC1(to_push, 1);
    uint32_t ts = TIM2->CNT;

    angle_meas_new = FUNC4(angle_meas_new, 12);

    // update array of samples
    FUNC6(&angle_meas, angle_meas_new);

    // *** angle real time check
    // add 1 to not false trigger the violation and multiply by 20 since the check is done every 250ms and steer angle is updated at 80Hz
    int rt_delta_angle_up = ((int)(RT_ANGLE_FUDGE * ((FUNC3(LOOKUP_ANGLE_RATE_UP, speed) * 20. * CAN_TO_DEG) + 1.)));
    int rt_delta_angle_down = ((int)(RT_ANGLE_FUDGE * ((FUNC3(LOOKUP_ANGLE_RATE_DOWN, speed) * 20. * CAN_TO_DEG) + 1.)));
    int highest_rt_angle = rt_angle_last + ((rt_angle_last > 0) ? rt_delta_angle_up : rt_delta_angle_down);
    int lowest_rt_angle = rt_angle_last - ((rt_angle_last > 0) ? rt_delta_angle_down : rt_delta_angle_up);

    // every RT_INTERVAL or when controls are turned on, set the new limits
    uint32_t ts_elapsed = FUNC2(ts, ts_angle_last);
    if ((ts_elapsed > TOYOTA_RT_INTERVAL) || (controls_allowed && !controls_allowed_last)) {
      rt_angle_last = angle_meas_new;
      ts_angle_last = ts;
    }

    // check for violation
    if (angle_control &&
        ((angle_meas_new < lowest_rt_angle) ||
         (angle_meas_new > highest_rt_angle))) {
      controls_allowed = 0;
    }

    controls_allowed_last = controls_allowed;
  }

  // get speed
  if (addr == 0xb4) {
    speed = ((float)((FUNC1(to_push, 5) << 8) | FUNC1(to_push, 6))) * 0.01 / 3.6;
  }

  // get ipas state
  if (addr == 0x262) {
    ipas_state = FUNC1(to_push, 0) & 0xf;
  }

  // exit controls on high steering override
  if (angle_control && ((torque_driver.min > TOYOTA_IPAS_OVERRIDE_THRESHOLD) ||
                        (torque_driver.max < -TOYOTA_IPAS_OVERRIDE_THRESHOLD) ||
                        (ipas_state==5))) {
    controls_allowed = 0;
  }
}