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
typedef  int /*<<< orphan*/  resname ;
struct TYPE_6__ {void* toidAttNo; void* wholeAttNo; void* ctidAttNo; TYPE_1__* rowmark; } ;
struct TYPE_5__ {scalar_t__ markType; int rowmarkId; scalar_t__ rti; scalar_t__ prti; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ ExecRowMark ;
typedef  TYPE_2__ ExecAuxRowMark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ ROW_MARK_COPY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

ExecAuxRowMark *
FUNC5(ExecRowMark *erm, List *targetlist)
{
	ExecAuxRowMark *aerm = (ExecAuxRowMark *) FUNC3(sizeof(ExecAuxRowMark));
	char		resname[32];

	aerm->rowmark = erm;

	/* Look up the resjunk columns associated with this rowmark */
	if (erm->markType != ROW_MARK_COPY)
	{
		/* need ctid for all methods other than COPY */
		FUNC4(resname, sizeof(resname), "ctid%u", erm->rowmarkId);
		aerm->ctidAttNo = FUNC1(targetlist,
													   resname);
		if (!FUNC0(aerm->ctidAttNo))
			FUNC2(ERROR, "could not find junk %s column", resname);
	}
	else
	{
		/* need wholerow if COPY */
		FUNC4(resname, sizeof(resname), "wholerow%u", erm->rowmarkId);
		aerm->wholeAttNo = FUNC1(targetlist,
														resname);
		if (!FUNC0(aerm->wholeAttNo))
			FUNC2(ERROR, "could not find junk %s column", resname);
	}

	/* if child rel, need tableoid */
	if (erm->rti != erm->prti)
	{
		FUNC4(resname, sizeof(resname), "tableoid%u", erm->rowmarkId);
		aerm->toidAttNo = FUNC1(targetlist,
													   resname);
		if (!FUNC0(aerm->toidAttNo))
			FUNC2(ERROR, "could not find junk %s column", resname);
	}

	return aerm;
}