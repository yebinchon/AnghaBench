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
typedef  int /*<<< orphan*/  PrintfTarget ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(int value, int leftjust, int minlen, PrintfTarget *target)
{
	int			padlen;			/* amount to pad */

	padlen = FUNC0(minlen, 1, leftjust);

	if (padlen > 0)
	{
		FUNC2(' ', padlen, target);
		padlen = 0;
	}

	FUNC1(value, target);

	FUNC3(padlen, target);
}