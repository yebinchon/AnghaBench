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
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  BpChar ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(Datum x, Datum y, SortSupport ssup)
{
	BpChar	   *arg1 = FUNC0(x);
	BpChar	   *arg2 = FUNC0(y);
	char	   *a1p,
			   *a2p;
	int			len1,
				len2,
				result;

	a1p = FUNC3(arg1);
	a2p = FUNC3(arg2);

	len1 = FUNC5(a1p, FUNC4(arg1));
	len2 = FUNC5(a2p, FUNC4(arg2));

	result = FUNC6(a1p, a2p, FUNC1(len1, len2));
	if ((result == 0) && (len1 != len2))
		result = (len1 < len2) ? -1 : 1;

	/* We can't afford to leak memory here. */
	if (FUNC2(arg1) != x)
		FUNC7(arg1);
	if (FUNC2(arg2) != y)
		FUNC7(arg2);

	return result;
}