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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 

__attribute__ ((weak))
void FUNC2(void)
{
    if (FUNC0(USB_LED_CAPS_LOCK))
    {
        FUNC1(30, 0xFF, 0xFF, 0xFF);
    }
}