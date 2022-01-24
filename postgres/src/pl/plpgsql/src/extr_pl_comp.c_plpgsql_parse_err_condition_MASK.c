#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* label; scalar_t__ sqlerrstate; } ;
struct TYPE_5__ {char* condname; struct TYPE_5__* next; scalar_t__ sqlerrstate; } ;
typedef  TYPE_1__ PLpgSQL_condition ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 TYPE_4__* exception_label_map ; 
 TYPE_1__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

PLpgSQL_condition *
FUNC5(char *condname)
{
	int			i;
	PLpgSQL_condition *new;
	PLpgSQL_condition *prev;

	/*
	 * XXX Eventually we will want to look for user-defined exception names
	 * here.
	 */

	/*
	 * OTHERS is represented as code 0 (which would map to '00000', but we
	 * have no need to represent that as an exception condition).
	 */
	if (FUNC4(condname, "others") == 0)
	{
		new = FUNC3(sizeof(PLpgSQL_condition));
		new->sqlerrstate = 0;
		new->condname = condname;
		new->next = NULL;
		return new;
	}

	prev = NULL;
	for (i = 0; exception_label_map[i].label != NULL; i++)
	{
		if (FUNC4(condname, exception_label_map[i].label) == 0)
		{
			new = FUNC3(sizeof(PLpgSQL_condition));
			new->sqlerrstate = exception_label_map[i].sqlerrstate;
			new->condname = condname;
			new->next = prev;
			prev = new;
		}
	}

	if (!prev)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_OBJECT),
				 FUNC2("unrecognized exception condition \"%s\"",
						condname)));

	return prev;
}