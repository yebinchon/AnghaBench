#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  ptype; scalar_t__ isnull; } ;
struct TYPE_9__ {scalar_t__ numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef  TYPE_1__* ParamListInfo ;
typedef  TYPE_2__ ParamExternData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int,int,TYPE_2__*) ; 

ParamListInfo
FUNC5(ParamListInfo from)
{
	ParamListInfo retval;

	if (from == NULL || from->numParams <= 0)
		return NULL;

	retval = FUNC3(from->numParams);

	for (int i = 0; i < from->numParams; i++)
	{
		ParamExternData *oprm;
		ParamExternData *nprm = &retval->params[i];
		ParamExternData prmdata;
		int16		typLen;
		bool		typByVal;

		/* give hook a chance in case parameter is dynamic */
		if (from->paramFetch != NULL)
			oprm = from->paramFetch(from, i + 1, false, &prmdata);
		else
			oprm = &from->params[i];

		/* flat-copy the parameter info */
		*nprm = *oprm;

		/* need datumCopy in case it's a pass-by-reference datatype */
		if (nprm->isnull || !FUNC0(nprm->ptype))
			continue;
		FUNC2(nprm->ptype, &typLen, &typByVal);
		nprm->value = FUNC1(nprm->value, typByVal, typLen);
	}

	return retval;
}