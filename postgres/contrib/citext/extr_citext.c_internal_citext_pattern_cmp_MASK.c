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
typedef  int /*<<< orphan*/  text ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int32
FUNC7(text *left, text *right, Oid collid)
{
	char	   *lcstr,
			   *rcstr;
	int			llen,
				rlen;
	int32		result;

	lcstr = FUNC5(FUNC1(left), FUNC2(left), DEFAULT_COLLATION_OID);
	rcstr = FUNC5(FUNC1(right), FUNC2(right), DEFAULT_COLLATION_OID);

	llen = FUNC6(lcstr);
	rlen = FUNC6(rcstr);

	result = FUNC3((void *) lcstr, (void *) rcstr, FUNC0(llen, rlen));
	if (result == 0)
	{
		if (llen < rlen)
			result = -1;
		else if (llen > rlen)
			result = 1;
	}

	FUNC4(lcstr);
	FUNC4(rcstr);

	return result;
}