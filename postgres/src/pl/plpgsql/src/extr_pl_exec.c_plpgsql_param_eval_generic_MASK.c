#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_15__ {TYPE_3__* ecxt_param_list_info; } ;
struct TYPE_10__ {int paramid; scalar_t__ paramtype; } ;
struct TYPE_11__ {TYPE_1__ cparam; } ;
struct TYPE_14__ {TYPE_2__ d; int /*<<< orphan*/  resnull; int /*<<< orphan*/  resvalue; } ;
struct TYPE_13__ {int ndatums; int /*<<< orphan*/ ** datums; } ;
struct TYPE_12__ {scalar_t__ paramFetchArg; } ;
typedef  TYPE_3__* ParamListInfo ;
typedef  TYPE_4__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  PLpgSQL_datum ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_5__ ExprEvalStep ;
typedef  TYPE_6__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(ExprState *state, ExprEvalStep *op,
						   ExprContext *econtext)
{
	ParamListInfo params;
	PLpgSQL_execstate *estate;
	int			dno = op->d.cparam.paramid - 1;
	PLpgSQL_datum *datum;
	Oid			datumtype;
	int32		datumtypmod;

	/* fetch back the hook data */
	params = econtext->ecxt_param_list_info;
	estate = (PLpgSQL_execstate *) params->paramFetchArg;
	FUNC0(dno >= 0 && dno < estate->ndatums);

	/* now we can access the target datum */
	datum = estate->datums[dno];

	/* fetch datum's value */
	FUNC4(estate, datum,
					&datumtype, &datumtypmod,
					op->resvalue, op->resnull);

	/* safety check -- needed for, eg, record fields */
	if (FUNC6(datumtype != op->d.cparam.paramtype))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC3("type of parameter %d (%s) does not match that when preparing the plan (%s)",
						op->d.cparam.paramid,
						FUNC5(datumtype),
						FUNC5(op->d.cparam.paramtype))));
}