#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
struct TYPE_7__ {TYPE_1__* es_plannedstmt; TYPE_2__* es_param_exec_vals; } ;
struct TYPE_6__ {int /*<<< orphan*/  isnull; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  paramExecTypes; } ;
typedef  int Size ;
typedef  TYPE_2__ ParamExecData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Size
FUNC6(EState *estate, Bitmapset *params)
{
	int			paramid;
	Size		sz = sizeof(int);

	paramid = -1;
	while ((paramid = FUNC2(params, paramid)) >= 0)
	{
		Oid			typeOid;
		int16		typLen;
		bool		typByVal;
		ParamExecData *prm;

		prm = &(estate->es_param_exec_vals[paramid]);
		typeOid = FUNC5(estate->es_plannedstmt->paramExecTypes,
							   paramid);

		sz = FUNC1(sz, sizeof(int)); /* space for paramid */

		/* space for datum/isnull */
		if (FUNC0(typeOid))
			FUNC4(typeOid, &typLen, &typByVal);
		else
		{
			/* If no type OID, assume by-value, like copyParamList does. */
			typLen = sizeof(Datum);
			typByVal = true;
		}
		sz = FUNC1(sz,
					  FUNC3(prm->value, prm->isnull,
										 typByVal, typLen));
	}
	return sz;
}