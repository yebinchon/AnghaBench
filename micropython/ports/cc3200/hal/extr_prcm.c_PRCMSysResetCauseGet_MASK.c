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
 scalar_t__ GPRCM_BASE ; 
 scalar_t__ GPRCM_O_APPS_RESET_CAUSE ; 
 scalar_t__ HIB3P3_BASE ; 
 scalar_t__ HIB3P3_O_MEM_HIB_WAKE_STATUS ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long PRCM_HIB_EXIT ; 
 unsigned long PRCM_POWER_ON ; 

unsigned long FUNC2(void)
{
  unsigned long ulWakeupStatus;

  //
  // Read the Reset status
  //
  ulWakeupStatus = (FUNC0(GPRCM_BASE+ GPRCM_O_APPS_RESET_CAUSE) & 0xFF);

  //
  // For hibernate do additional chaeck.
  //
  if(ulWakeupStatus == PRCM_POWER_ON)
  {
    if(FUNC1(HIB3P3_BASE + HIB3P3_O_MEM_HIB_WAKE_STATUS) & 0x1)
    {
      ulWakeupStatus = PRCM_HIB_EXIT;
    }
  }

  //
  // Return status.
  //
  return ulWakeupStatus;
}