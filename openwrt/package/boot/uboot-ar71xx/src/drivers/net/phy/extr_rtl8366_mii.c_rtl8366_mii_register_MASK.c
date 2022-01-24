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
typedef  int /*<<< orphan*/  bd_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8366_DEVNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtl8366_miiread ; 
 int /*<<< orphan*/  rtl8366_miiwrite ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(bd_t *bis)
{
    FUNC0(FUNC1(RTL8366_DEVNAME), rtl8366_miiread,
			rtl8366_miiwrite);

    return 0;
}