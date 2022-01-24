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
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int controls_allowed ; 
 int subaru_cruise_engaged_last ; 
 int /*<<< orphan*/  subaru_torque_driver ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(CAN_FIFOMailBox_TypeDef *to_push) {
  int bus = FUNC1(to_push);
  int addr = FUNC0(to_push);

  if (((addr == 0x119) || (addr == 0x371)) && (bus == 0)){
    int bit_shift = (addr == 0x119) ? 16 : 29;
    int torque_driver_new = ((FUNC2(to_push) >> bit_shift) & 0x7FF);
    torque_driver_new = FUNC4(torque_driver_new, 11);
    // update array of samples
    FUNC5(&subaru_torque_driver, torque_driver_new);
  }

  // enter controls on rising edge of ACC, exit controls on ACC off
  if (((addr == 0x240) || (addr == 0x144)) && (bus == 0)) {
    int bit_shift = (addr == 0x240) ? 9 : 17;
    int cruise_engaged = ((FUNC3(to_push) >> bit_shift) & 1);
    if (cruise_engaged && !subaru_cruise_engaged_last) {
      controls_allowed = 1;
    }
    if (!cruise_engaged) {
      controls_allowed = 0;
    }
    subaru_cruise_engaged_last = cruise_engaged;
  }
}