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
struct TYPE_3__ {int /*<<< orphan*/ * eval_econtext; int /*<<< orphan*/ * eval_tuptable; } ;
typedef  TYPE_1__ PLpgSQL_execstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(PLpgSQL_execstate *estate)
{
	/* Clear result of a full SPI_execute */
	if (estate->eval_tuptable != NULL)
		FUNC1(estate->eval_tuptable);
	estate->eval_tuptable = NULL;

	/*
	 * Clear result of exec_eval_simple_expr (but keep the econtext).  This
	 * also clears any short-lived allocations done via get_eval_mcontext.
	 */
	if (estate->eval_econtext != NULL)
		FUNC0(estate->eval_econtext);
}