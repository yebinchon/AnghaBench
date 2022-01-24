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
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char PROPARALLEL_RESTRICTED ; 
 char PROPARALLEL_SAFE ; 
 char PROPARALLEL_UNSAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static char
FUNC5(DefElem *defel)
{
	char	   *str = FUNC3(defel->arg);

	if (FUNC4(str, "safe") == 0)
		return PROPARALLEL_SAFE;
	else if (FUNC4(str, "unsafe") == 0)
		return PROPARALLEL_UNSAFE;
	else if (FUNC4(str, "restricted") == 0)
		return PROPARALLEL_RESTRICTED;
	else
	{
		FUNC0(ERROR,
				(FUNC1(ERRCODE_SYNTAX_ERROR),
				 FUNC2("parameter \"parallel\" must be SAFE, RESTRICTED, or UNSAFE")));
		return PROPARALLEL_UNSAFE;	/* keep compiler quiet */
	}
}