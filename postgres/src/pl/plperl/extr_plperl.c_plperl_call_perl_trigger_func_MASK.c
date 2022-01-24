#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  reference; } ;
typedef  TYPE_1__ plperl_proc_desc ;
struct TYPE_8__ {TYPE_3__* tg_trigger; } ;
typedef  TYPE_2__ TriggerData ;
struct TYPE_9__ {int tgnargs; int /*<<< orphan*/ * tgargs; } ;
typedef  TYPE_3__ Trigger ;
struct TYPE_10__ {scalar_t__ context; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_4__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ERRSV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FREETMPS ; 
 int G_EVAL ; 
 int G_SCALAR ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  POPs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTBACK ; 
 int /*<<< orphan*/  SAVETMPS ; 
 int /*<<< orphan*/  SPAGAIN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dSP ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sp ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SV  *
FUNC16(plperl_proc_desc *desc, FunctionCallInfo fcinfo,
							  SV *td)
{
	dTHX;
	dSP;
	SV		   *retval,
			   *TDsv;
	int			i,
				count;
	Trigger    *tg_trigger = ((TriggerData *) fcinfo->context)->tg_trigger;

	ENTER;
	SAVETMPS;

	TDsv = FUNC8("main::_TD", 0);
	if (!TDsv)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC7("couldn't fetch $_TD")));

	FUNC11(TDsv);			/* local $_TD */
	FUNC15(TDsv, td);

	FUNC1(sp);
	FUNC0(sp, tg_trigger->tgnargs);

	for (i = 0; i < tg_trigger->tgnargs; i++)
		FUNC2(FUNC14(FUNC4(tg_trigger->tgargs[i])));
	PUTBACK;

	/* Do NOT use G_KEEPERR here */
	count = FUNC10(desc->reference, G_SCALAR | G_EVAL);

	SPAGAIN;

	if (count != 1)
	{
		PUTBACK;
		FREETMPS;
		LEAVE;
		FUNC5(ERROR,
				(FUNC6(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC7("didn't get a return item from trigger function")));
	}

	if (FUNC3(ERRSV))
	{
		(void) POPs;
		PUTBACK;
		FREETMPS;
		LEAVE;
		/* XXX need to find a way to determine a better errcode here */
		FUNC5(ERROR,
				(FUNC6(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC7("%s", FUNC12(FUNC13(ERRSV)))));
	}

	retval = FUNC9(POPs);

	PUTBACK;
	FREETMPS;
	LEAVE;

	return retval;
}