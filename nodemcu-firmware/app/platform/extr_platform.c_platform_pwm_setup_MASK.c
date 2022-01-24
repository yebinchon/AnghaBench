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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 unsigned int NUM_PWM ; 
 int /*<<< orphan*/  PLATFORM_GPIO_FLOAT ; 
 int /*<<< orphan*/  PLATFORM_GPIO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int* pwms_duty ; 

uint32_t FUNC6( unsigned pin, uint32_t frequency, unsigned duty )
{
  uint32_t clock;
  if ( pin < NUM_PWM)
  {
    FUNC0(pin, PLATFORM_GPIO_OUTPUT, PLATFORM_GPIO_FLOAT);  // disable gpio interrupt first
    if(!FUNC2(pin))
      return 0;
    // pwm_set_duty(DUTY(duty), pin);
    FUNC3(0, pin);
    pwms_duty[pin] = duty;
    FUNC4((uint16_t)frequency, pin);
  } else {
    return 0;
  }
  clock = FUNC1( pin );
  if (!FUNC5()) {
    return 0;
  }
  return clock;
}