#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  charlen; int /*<<< orphan*/  lenchartoken; int /*<<< orphan*/  lenbytetoken; int /*<<< orphan*/  poschar; int /*<<< orphan*/  posbyte; int /*<<< orphan*/  state; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__* state; scalar_t__ lenchartoken; scalar_t__ lenbytetoken; } ;
typedef  TYPE_1__ TParser ;

/* Variables and functions */
 int /*<<< orphan*/  TPS_InURLPathFirst ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ URLPATH ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC4(TParser *prs)
{
	TParser    *tmpprs = FUNC1(prs);
	int			res = 0;

	tmpprs->state = FUNC3(tmpprs->state);
	tmpprs->state->state = TPS_InURLPathFirst;

	if (FUNC2(tmpprs) && tmpprs->type == URLPATH)
	{
		prs->state->posbyte += tmpprs->lenbytetoken;
		prs->state->poschar += tmpprs->lenchartoken;
		prs->state->lenbytetoken += tmpprs->lenbytetoken;
		prs->state->lenchartoken += tmpprs->lenchartoken;
		prs->state->charlen = tmpprs->state->charlen;
		res = 1;
	}
	FUNC0(tmpprs);

	return res;
}