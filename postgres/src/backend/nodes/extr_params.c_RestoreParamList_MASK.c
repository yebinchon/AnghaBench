#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_6__ {int ptype; int pflags; int /*<<< orphan*/  isnull; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {TYPE_2__* params; } ;
typedef  TYPE_1__* ParamListInfo ;
typedef  TYPE_2__ ParamExternData ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,int) ; 

ParamListInfo
FUNC3(char **start_address)
{
	ParamListInfo paramLI;
	int			nparams;

	FUNC2(&nparams, *start_address, sizeof(int));
	*start_address += sizeof(int);

	paramLI = FUNC1(nparams);

	for (int i = 0; i < nparams; i++)
	{
		ParamExternData *prm = &paramLI->params[i];

		/* Read type OID. */
		FUNC2(&prm->ptype, *start_address, sizeof(Oid));
		*start_address += sizeof(Oid);

		/* Read flags. */
		FUNC2(&prm->pflags, *start_address, sizeof(uint16));
		*start_address += sizeof(uint16);

		/* Read datum/isnull. */
		prm->value = FUNC0(start_address, &prm->isnull);
	}

	return paramLI;
}