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
 scalar_t__ GPRCM_O_APPS_LPDS_WAKEUP_SRC ; 
 unsigned long FUNC0 (scalar_t__) ; 

unsigned long FUNC1(void)
{
  return (FUNC0(GPRCM_BASE+ GPRCM_O_APPS_LPDS_WAKEUP_SRC));
}