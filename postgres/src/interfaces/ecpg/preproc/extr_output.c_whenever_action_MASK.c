#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ code; } ;

/* Variables and functions */
 scalar_t__ W_NOTHING ; 
 int /*<<< orphan*/  base_yyout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__ when_error ; 
 TYPE_1__ when_nf ; 
 TYPE_1__ when_warn ; 

void
FUNC4(int mode)
{
	if ((mode & 1) == 1 && when_nf.code != W_NOTHING)
	{
		FUNC2();
		FUNC0(base_yyout, "\nif (sqlca.sqlcode == ECPG_NOT_FOUND) ");
		FUNC3(&when_nf);
	}
	if (when_warn.code != W_NOTHING)
	{
		FUNC2();
		FUNC0(base_yyout, "\nif (sqlca.sqlwarn[0] == 'W') ");
		FUNC3(&when_warn);
	}
	if (when_error.code != W_NOTHING)
	{
		FUNC2();
		FUNC0(base_yyout, "\nif (sqlca.sqlcode < 0) ");
		FUNC3(&when_error);
	}

	if ((mode & 2) == 2)
		FUNC1('}', base_yyout);

	FUNC2();
}