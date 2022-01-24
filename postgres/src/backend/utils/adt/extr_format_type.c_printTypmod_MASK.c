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
typedef  scalar_t__ int32 ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char const*,...) ; 

__attribute__((used)) static char *
FUNC5(const char *typname, int32 typmod, Oid typmodout)
{
	char	   *res;

	/* Shouldn't be called if typmod is -1 */
	FUNC0(typmod >= 0);

	if (typmodout == InvalidOid)
	{
		/* Default behavior: just print the integer typmod with parens */
		res = FUNC4("%s(%d)", typname, (int) typmod);
	}
	else
	{
		/* Use the type-specific typmodout procedure */
		char	   *tmstr;

		tmstr = FUNC1(FUNC3(typmodout,
												 FUNC2(typmod)));
		res = FUNC4("%s%s", typname, tmstr);
	}

	return res;
}