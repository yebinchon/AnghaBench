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
 scalar_t__ HIB3P3_BASE ; 
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_TIMER_LSW ; 
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_TIMER_MSW ; 
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_TIMER_READ ; 
 unsigned long long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

unsigned long long FUNC2(void)
{
  unsigned long long ullRTCVal;

  //
  // Latch the RTC vlaue
  //
  FUNC1(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_TIMER_READ, 0x1);

  //
  // Read latched values as 2 32-bit vlaues
  //
  ullRTCVal  = FUNC0(HIB3P3_BASE + HIB3P3_O_MEM_HIB_RTC_TIMER_MSW);
  ullRTCVal  = ullRTCVal << 32;
  ullRTCVal |= FUNC0(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_TIMER_LSW);

  return ullRTCVal;
}