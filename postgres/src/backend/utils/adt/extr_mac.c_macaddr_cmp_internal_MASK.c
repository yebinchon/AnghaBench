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
typedef  int /*<<< orphan*/  macaddr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(macaddr *a1, macaddr *a2)
{
	if (FUNC0(a1) < FUNC0(a2))
		return -1;
	else if (FUNC0(a1) > FUNC0(a2))
		return 1;
	else if (FUNC1(a1) < FUNC1(a2))
		return -1;
	else if (FUNC1(a1) > FUNC1(a2))
		return 1;
	else
		return 0;
}