#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_14__ {int /*<<< orphan*/ * ecxt_scantuple; int /*<<< orphan*/ * ecxt_outertuple; int /*<<< orphan*/ * ecxt_innertuple; } ;
struct TYPE_10__ {int attnum; int /*<<< orphan*/  vartype; } ;
struct TYPE_11__ {TYPE_1__ var; } ;
struct TYPE_13__ {TYPE_2__ d; } ;
struct TYPE_12__ {int steps_len; TYPE_4__* steps; } ;
typedef  TYPE_3__ ExprState ;
typedef  TYPE_4__ ExprEvalStep ;
typedef  TYPE_5__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
#define  EEOP_INNER_VAR 130 
#define  EEOP_OUTER_VAR 129 
#define  EEOP_SCAN_VAR 128 
 int FUNC1 (TYPE_3__*,TYPE_4__*) ; 

void
FUNC2(ExprState *state, ExprContext *econtext)
{
	int			i = 0;
	TupleTableSlot *innerslot;
	TupleTableSlot *outerslot;
	TupleTableSlot *scanslot;

	innerslot = econtext->ecxt_innertuple;
	outerslot = econtext->ecxt_outertuple;
	scanslot = econtext->ecxt_scantuple;

	for (i = 0; i < state->steps_len; i++)
	{
		ExprEvalStep *op = &state->steps[i];

		switch (FUNC1(state, op))
		{
			case EEOP_INNER_VAR:
				{
					int			attnum = op->d.var.attnum;

					FUNC0(innerslot, attnum + 1, op->d.var.vartype);
					break;
				}

			case EEOP_OUTER_VAR:
				{
					int			attnum = op->d.var.attnum;

					FUNC0(outerslot, attnum + 1, op->d.var.vartype);
					break;
				}

			case EEOP_SCAN_VAR:
				{
					int			attnum = op->d.var.attnum;

					FUNC0(scanslot, attnum + 1, op->d.var.vartype);
					break;
				}
			default:
				break;
		}
	}
}