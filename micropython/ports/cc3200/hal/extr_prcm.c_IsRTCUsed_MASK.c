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
typedef  int tBoolean ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_MSEC_U32_REG_ADDR ; 

__attribute__((used)) static tBoolean FUNC1(void)
{
  return (FUNC0(RTC_MSEC_U32_REG_ADDR) & (1 << 31)) ? true : false;
}