#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int int16 ;
struct TYPE_8__ {int /*<<< orphan*/  isnull; int /*<<< orphan*/  value; int /*<<< orphan*/  ptype; } ;
struct TYPE_7__ {int numParams; TYPE_2__* params; TYPE_2__* (* paramFetch ) (TYPE_1__*,int,int,TYPE_2__*) ;} ;
typedef  int Size ;
typedef  TYPE_1__* ParamListInfo ;
typedef  TYPE_2__ ParamExternData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int,int,TYPE_2__*) ; 

Size
FUNC5(ParamListInfo paramLI)
{
	int			i;
	Size		sz = sizeof(int);

	if (paramLI == NULL || paramLI->numParams <= 0)
		return sz;

	for (i = 0; i < paramLI->numParams; i++)
	{
		ParamExternData *prm;
		ParamExternData prmdata;
		Oid			typeOid;
		int16		typLen;
		bool		typByVal;

		/* give hook a chance in case parameter is dynamic */
		if (paramLI->paramFetch != NULL)
			prm = paramLI->paramFetch(paramLI, i + 1, false, &prmdata);
		else
			prm = &paramLI->params[i];

		typeOid = prm->ptype;

		sz = FUNC1(sz, sizeof(Oid)); /* space for type OID */
		sz = FUNC1(sz, sizeof(uint16));	/* space for pflags */

		/* space for datum/isnull */
		if (FUNC0(typeOid))
			FUNC3(typeOid, &typLen, &typByVal);
		else
		{
			/* If no type OID, assume by-value, like copyParamList does. */
			typLen = sizeof(Datum);
			typByVal = true;
		}
		sz = FUNC1(sz,
					  FUNC2(prm->value, prm->isnull, typByVal, typLen));
	}

	return sz;
}