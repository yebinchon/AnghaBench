#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int value; int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ datetkn ;

/* Variables and functions */
 int /*<<< orphan*/  TOKMAXLEN ; 
 int UNKNOWN_FIELD ; 
 TYPE_1__* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ const** deltacache ; 
 int /*<<< orphan*/  deltatktbl ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szdeltatktbl ; 

int
FUNC2(int field, char *lowtoken, int *val)
{
	int			type;
	const datetkn *tp;

	/* use strncmp so that we match truncated tokens */
	if (deltacache[field] != NULL &&
		FUNC1(lowtoken, deltacache[field]->token, TOKMAXLEN) == 0)
		tp = deltacache[field];
	else
		tp = FUNC0(lowtoken, deltatktbl, szdeltatktbl);
	deltacache[field] = tp;
	if (tp == NULL)
	{
		type = UNKNOWN_FIELD;
		*val = 0;
	}
	else
	{
		type = tp->type;
		*val = tp->value;
	}

	return type;
}