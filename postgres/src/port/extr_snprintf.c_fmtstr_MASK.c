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
 int /*<<< orphan*/  FUNC1 (char,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *value, int leftjust, int minlen, int maxwidth,
	   int pointflag, PrintfTarget *target)
{
	int			padlen,
				vallen;			/* amount to pad */

	/*
	 * If a maxwidth (precision) is specified, we must not fetch more bytes
	 * than that.
	 */
	if (pointflag)
		vallen = FUNC4(value, maxwidth);
	else
		vallen = FUNC3(value);

	padlen = FUNC0(minlen, vallen, leftjust);

	if (padlen > 0)
	{
		FUNC1(' ', padlen, target);
		padlen = 0;
	}

	FUNC2(value, vallen, target);

	FUNC5(padlen, target);
}