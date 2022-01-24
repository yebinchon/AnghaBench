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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

uint32_t FUNC4( unsigned pin, uint32_t clock )
{
  // NODE_DBG("Function platform_pwm_set_clock() is called.\n");
  if( pin >= NUM_PWM)
    return 0;
  if(!FUNC0(pin))
    return 0;

  FUNC2((uint16_t)clock, pin);
  FUNC3();
  return (uint32_t)FUNC1( pin );
}