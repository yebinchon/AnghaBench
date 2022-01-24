#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sqlerrstate; int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (char const,char const,char const,char const,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 TYPE_1__* exception_label_map ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char const*,char*) ; 

int
FUNC7(const char *condname, bool allow_sqlstate)
{
	int			i;

	if (allow_sqlstate)
	{
		if (FUNC5(condname) == 5 &&
			FUNC6(condname, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ") == 5)
			return FUNC0(condname[0],
								 condname[1],
								 condname[2],
								 condname[3],
								 condname[4]);
	}

	for (i = 0; exception_label_map[i].label != NULL; i++)
	{
		if (FUNC4(condname, exception_label_map[i].label) == 0)
			return exception_label_map[i].sqlerrstate;
	}

	FUNC1(ERROR,
			(FUNC2(ERRCODE_UNDEFINED_OBJECT),
			 FUNC3("unrecognized exception condition \"%s\"",
					condname)));
	return 0;					/* keep compiler quiet */
}