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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32
FUNC6(text *left, text *right, Oid collid)
{
	char	   *lcstr,
			   *rcstr;
	int32		result;

	/*
	 * We must do our str_tolower calls with DEFAULT_COLLATION_OID, not the
	 * input collation as you might expect.  This is so that the behavior of
	 * citext's equality and hashing functions is not collation-dependent.  We
	 * should change this once the core infrastructure is able to cope with
	 * collation-dependent equality and hashing functions.
	 */

	lcstr = FUNC3(FUNC0(left), FUNC1(left), DEFAULT_COLLATION_OID);
	rcstr = FUNC3(FUNC0(right), FUNC1(right), DEFAULT_COLLATION_OID);

	result = FUNC5(lcstr, FUNC4(lcstr),
						rcstr, FUNC4(rcstr),
						collid);

	FUNC2(lcstr);
	FUNC2(rcstr);

	return result;
}