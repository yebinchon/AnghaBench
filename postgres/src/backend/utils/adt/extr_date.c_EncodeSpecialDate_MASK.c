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
typedef  int /*<<< orphan*/  DateADT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EARLY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  LATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void
FUNC4(DateADT dt, char *str)
{
	if (FUNC0(dt))
		FUNC3(str, EARLY);
	else if (FUNC1(dt))
		FUNC3(str, LATE);
	else						/* shouldn't happen */
		FUNC2(ERROR, "invalid argument for EncodeSpecialDate");
}