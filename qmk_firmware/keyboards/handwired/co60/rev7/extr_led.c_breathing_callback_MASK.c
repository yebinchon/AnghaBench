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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  PWMDriver ;

/* Variables and functions */
 scalar_t__ BREATHING_HALT_OFF ; 
 scalar_t__ BREATHING_HALT_ON ; 
 int BREATHING_STEPS ; 
 int /*<<< orphan*/  PWMD4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int breathing_counter ; 
 scalar_t__ breathing_halt ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int breathing_period ; 
 int* breathing_table ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(PWMDriver *pwmp)
{
  (void)pwmp;
  uint16_t interval = (uint16_t) breathing_period * 256 / BREATHING_STEPS;
  // resetting after one period to prevent ugly reset at overflow.
  breathing_counter = (breathing_counter + 1) % (breathing_period * 256);
  uint8_t index = breathing_counter / interval % BREATHING_STEPS;

  if (((breathing_halt == BREATHING_HALT_ON) && (index == BREATHING_STEPS / 2)) ||
      ((breathing_halt == BREATHING_HALT_OFF) && (index == BREATHING_STEPS - 1)))
  {
      FUNC1();
  }

  uint32_t duty = FUNC4(FUNC6(breathing_table[index] * 256));

  FUNC2();
  FUNC5(
    &PWMD4,
    2,
    FUNC0(
      &PWMD4,
      0xFFFF,
      duty
    )
  );
  FUNC3();
}