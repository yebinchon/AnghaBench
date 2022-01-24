#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_26__ {scalar_t__ er_tupdesc_id; } ;
struct TYPE_25__ {TYPE_3__* ecxt_param_list_info; } ;
struct TYPE_18__ {int paramid; scalar_t__ paramtype; } ;
struct TYPE_19__ {TYPE_1__ cparam; } ;
struct TYPE_24__ {TYPE_2__ d; int /*<<< orphan*/  resnull; int /*<<< orphan*/ * resvalue; } ;
struct TYPE_23__ {int ndatums; scalar_t__* datums; } ;
struct TYPE_22__ {int /*<<< orphan*/  refname; TYPE_9__* erh; } ;
struct TYPE_17__ {scalar_t__ ftypeid; int /*<<< orphan*/  fnumber; } ;
struct TYPE_21__ {scalar_t__ dtype; size_t recparentno; scalar_t__ rectupledescid; TYPE_15__ finfo; int /*<<< orphan*/  fieldname; } ;
struct TYPE_20__ {scalar_t__ paramFetchArg; } ;
typedef  TYPE_3__* ParamListInfo ;
typedef  TYPE_4__ PLpgSQL_recfield ;
typedef  TYPE_5__ PLpgSQL_rec ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_7__ ExprEvalStep ;
typedef  TYPE_8__ ExprContext ;
typedef  TYPE_9__ ExpandedRecordHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PLPGSQL_DTYPE_RECFIELD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int /*<<< orphan*/ ,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(ExprState *state, ExprEvalStep *op,
							ExprContext *econtext)
{
	ParamListInfo params;
	PLpgSQL_execstate *estate;
	int			dno = op->d.cparam.paramid - 1;
	PLpgSQL_recfield *recfield;
	PLpgSQL_rec *rec;
	ExpandedRecordHeader *erh;

	/* fetch back the hook data */
	params = econtext->ecxt_param_list_info;
	estate = (PLpgSQL_execstate *) params->paramFetchArg;
	FUNC0(dno >= 0 && dno < estate->ndatums);

	/* now we can access the target datum */
	recfield = (PLpgSQL_recfield *) estate->datums[dno];
	FUNC0(recfield->dtype == PLPGSQL_DTYPE_RECFIELD);

	/* inline the relevant part of exec_eval_datum */
	rec = (PLpgSQL_rec *) (estate->datums[recfield->recparentno]);
	erh = rec->erh;

	/*
	 * If record variable is NULL, instantiate it if it has a named composite
	 * type, else complain.  (This won't change the logical state of the
	 * record: it's still NULL.)
	 */
	if (erh == NULL)
	{
		FUNC7(estate, rec);
		erh = rec->erh;
	}

	/*
	 * Look up the field's properties if we have not already, or if the tuple
	 * descriptor ID changed since last time.
	 */
	if (FUNC8(recfield->rectupledescid != erh->er_tupdesc_id))
	{
		if (!FUNC5(erh,
										  recfield->fieldname,
										  &recfield->finfo))
			FUNC1(ERROR,
					(FUNC2(ERRCODE_UNDEFINED_COLUMN),
					 FUNC3("record \"%s\" has no field \"%s\"",
							rec->refname, recfield->fieldname)));
		recfield->rectupledescid = erh->er_tupdesc_id;
	}

	/* OK to fetch the field value. */
	*op->resvalue = FUNC4(erh,
											  recfield->finfo.fnumber,
											  op->resnull);

	/* safety check -- needed for, eg, record fields */
	if (FUNC8(recfield->finfo.ftypeid != op->d.cparam.paramtype))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC3("type of parameter %d (%s) does not match that when preparing the plan (%s)",
						op->d.cparam.paramid,
						FUNC6(recfield->finfo.ftypeid),
						FUNC6(op->d.cparam.paramtype))));
}