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
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  RTC_MSEC_U32_REG_ADDR ; 

tBoolean FUNC2(unsigned char bit)
{
    tBoolean value = (FUNC0(RTC_MSEC_U32_REG_ADDR) & (1 << bit)) ? true : false;
    // special bits must be cleared immediatelly after reading
    FUNC1(bit);
    return value;
}