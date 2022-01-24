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
typedef  int /*<<< orphan*/  SortSupport ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ DateADT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(Datum x, Datum y, SortSupport ssup)
{
	DateADT		a = FUNC0(x);
	DateADT		b = FUNC0(y);

	if (a < b)
		return -1;
	else if (a > b)
		return 1;
	return 0;
}