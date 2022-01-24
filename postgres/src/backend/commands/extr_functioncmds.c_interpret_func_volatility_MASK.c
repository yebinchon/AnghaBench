#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  arg; } ;
typedef  TYPE_1__ DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 char PROVOLATILE_IMMUTABLE ; 
 char PROVOLATILE_STABLE ; 
 char PROVOLATILE_VOLATILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static char
FUNC3(DefElem *defel)
{
	char	   *str = FUNC1(defel->arg);

	if (FUNC2(str, "immutable") == 0)
		return PROVOLATILE_IMMUTABLE;
	else if (FUNC2(str, "stable") == 0)
		return PROVOLATILE_STABLE;
	else if (FUNC2(str, "volatile") == 0)
		return PROVOLATILE_VOLATILE;
	else
	{
		FUNC0(ERROR, "invalid volatility \"%s\"", str);
		return 0;				/* keep compiler quiet */
	}
}