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
 scalar_t__ HIB3P3_O_MEM_GPIO_WAKE_EN ; 
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_WAKE_EN ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 

void FUNC2(unsigned long ulHIBWakupSrc)
{
  unsigned long ulRegValue;

  //
  // Read the RTC register
  //
  ulRegValue = FUNC0(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_WAKE_EN);

  //
  // Enable the RTC as wakeup source if specified
  //
  ulRegValue |= (ulHIBWakupSrc & 0x1);

  //
  // Enable HIB wakeup sources
  //
  FUNC1(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_WAKE_EN,ulRegValue);

  //
  // REad the GPIO wakeup configuration register
  //
  ulRegValue = FUNC0(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_EN);

  //
  // Enable the specified GPIOs a wakeup sources
  //
  ulRegValue |= ((ulHIBWakupSrc>>16)&0xFF);

  //
  // Write the new register configuration
  //
  FUNC1(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_EN,ulRegValue);
}