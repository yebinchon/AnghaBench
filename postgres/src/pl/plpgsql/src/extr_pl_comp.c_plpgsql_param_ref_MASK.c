#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pname ;
struct TYPE_12__ {int /*<<< orphan*/  ns; } ;
struct TYPE_11__ {int /*<<< orphan*/  itemno; } ;
struct TYPE_10__ {int number; int /*<<< orphan*/  location; } ;
struct TYPE_9__ {scalar_t__ p_ref_hook_state; } ;
typedef  TYPE_1__ ParseState ;
typedef  TYPE_2__ ParamRef ;
typedef  TYPE_3__ PLpgSQL_nsitem ;
typedef  TYPE_4__ PLpgSQL_expr ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static Node *
FUNC3(ParseState *pstate, ParamRef *pref)
{
	PLpgSQL_expr *expr = (PLpgSQL_expr *) pstate->p_ref_hook_state;
	char		pname[32];
	PLpgSQL_nsitem *nse;

	FUNC2(pname, sizeof(pname), "$%d", pref->number);

	nse = FUNC1(expr->ns, false,
							pname, NULL, NULL,
							NULL);

	if (nse == NULL)
		return NULL;			/* name not known to plpgsql */

	return FUNC0(expr, nse->itemno, pref->location);
}