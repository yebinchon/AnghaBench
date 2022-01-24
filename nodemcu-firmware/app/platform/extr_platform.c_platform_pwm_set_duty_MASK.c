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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int NUM_PWM ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * pwms_duty ; 

uint32_t FUNC6( unsigned pin, uint32_t duty )
{
  // NODE_DBG("Function platform_pwm_set_duty() is called.\n");
  if ( pin < NUM_PWM)
  {
    if(!FUNC2(pin))
      return 0;
    FUNC4(FUNC0(duty), pin);
  } else {
    return 0;
  }
  FUNC5();
  pwms_duty[pin] = FUNC1(FUNC3(pin));
  return pwms_duty[pin];
}