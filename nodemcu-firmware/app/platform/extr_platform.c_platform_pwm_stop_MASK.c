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

/* Variables and functions */
 unsigned int NUM_PWM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3( unsigned pin )
{
  // NODE_DBG("Function platform_pwm_stop() is called.\n");
  if ( pin < NUM_PWM)
  {
    if(!FUNC0(pin))
      return;
    FUNC1(0, pin);
    FUNC2();
  }
}