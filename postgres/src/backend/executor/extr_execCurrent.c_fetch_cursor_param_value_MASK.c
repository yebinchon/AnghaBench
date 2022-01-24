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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* ecxt_param_list_info; } ;
struct TYPE_9__ {scalar_t__ ptype; int /*<<< orphan*/  value; int /*<<< orphan*/  isnull; } ;
struct TYPE_8__ {int numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef  TYPE_1__* ParamListInfo ;
typedef  TYPE_2__ ParamExternData ;
typedef  TYPE_3__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ REFCURSOROID ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int,int,TYPE_2__*) ; 

__attribute__((used)) static char *
FUNC7(ExprContext *econtext, int paramId)
{
	ParamListInfo paramInfo = econtext->ecxt_param_list_info;

	if (paramInfo &&
		paramId > 0 && paramId <= paramInfo->numParams)
	{
		ParamExternData *prm;
		ParamExternData prmdata;

		/* give hook a chance in case parameter is dynamic */
		if (paramInfo->paramFetch != NULL)
			prm = paramInfo->paramFetch(paramInfo, paramId, false, &prmdata);
		else
			prm = &paramInfo->params[paramId - 1];

		if (FUNC0(prm->ptype) && !prm->isnull)
		{
			/* safety check in case hook did something unexpected */
			if (prm->ptype != REFCURSOROID)
				FUNC2(ERROR,
						(FUNC3(ERRCODE_DATATYPE_MISMATCH),
						 FUNC4("type of parameter %d (%s) does not match that when preparing the plan (%s)",
								paramId,
								FUNC5(prm->ptype),
								FUNC5(REFCURSOROID))));

			/* We know that refcursor uses text's I/O routines */
			return FUNC1(prm->value);
		}
	}

	FUNC2(ERROR,
			(FUNC3(ERRCODE_UNDEFINED_OBJECT),
			 FUNC4("no value found for parameter %d", paramId)));
	return NULL;
}