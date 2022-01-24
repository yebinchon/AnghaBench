#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__* datums; } ;
struct TYPE_8__ {size_t curvar; } ;
struct TYPE_7__ {char* refname; int /*<<< orphan*/  value; scalar_t__ isnull; } ;
typedef  int /*<<< orphan*/ * Portal ;
typedef  TYPE_1__ PLpgSQL_var ;
typedef  TYPE_2__ PLpgSQL_stmt_close ;
typedef  TYPE_3__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_CURSOR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PLPGSQL_RC_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC8(PLpgSQL_execstate *estate, PLpgSQL_stmt_close *stmt)
{
	PLpgSQL_var *curvar;
	Portal		portal;
	char	   *curname;
	MemoryContext oldcontext;

	/* ----------
	 * Get the portal of the cursor by name
	 * ----------
	 */
	curvar = (PLpgSQL_var *) (estate->datums[stmt->curvar]);
	if (curvar->isnull)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC6("cursor variable \"%s\" is null", curvar->refname)));

	/* Use eval_mcontext for short-lived string */
	oldcontext = FUNC0(FUNC7(estate));
	curname = FUNC3(curvar->value);
	FUNC0(oldcontext);

	portal = FUNC2(curname);
	if (portal == NULL)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_CURSOR),
				 FUNC6("cursor \"%s\" does not exist", curname)));

	/* ----------
	 * And close it.
	 * ----------
	 */
	FUNC1(portal);

	return PLPGSQL_RC_OK;
}