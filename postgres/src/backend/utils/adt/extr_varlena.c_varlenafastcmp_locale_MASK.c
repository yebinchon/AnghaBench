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
typedef  int /*<<< orphan*/  VarString ;
typedef  int /*<<< orphan*/  SortSupport ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(Datum x, Datum y, SortSupport ssup)
{
	VarString  *arg1 = FUNC0(x);
	VarString  *arg2 = FUNC0(y);
	char	   *a1p,
			   *a2p;
	int			len1,
				len2,
				result;

	a1p = FUNC2(arg1);
	a2p = FUNC2(arg2);

	len1 = FUNC3(arg1);
	len2 = FUNC3(arg2);

	result = FUNC5(a1p, len1, a2p, len2, ssup);

	/* We can't afford to leak memory here. */
	if (FUNC1(arg1) != x)
		FUNC4(arg1);
	if (FUNC1(arg2) != y)
		FUNC4(arg2);

	return result;
}