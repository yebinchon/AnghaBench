#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  reference; } ;
typedef  TYPE_1__ plperl_proc_desc ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ERRSV ; 
 int /*<<< orphan*/  FREETMPS ; 
 int G_EVAL ; 
 int G_SCALAR ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  POPs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTBACK ; 
 int /*<<< orphan*/  SAVETMPS ; 
 int /*<<< orphan*/  SPAGAIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dSP ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(plperl_proc_desc *desc,
									FunctionCallInfo fcinfo,
									SV *td)
{
	dTHX;
	dSP;
	SV		   *retval,
			   *TDsv;
	int			count;

	ENTER;
	SAVETMPS;

	TDsv = FUNC5("main::_TD", 0);
	if (!TDsv)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC4("couldn't fetch $_TD")));

	FUNC8(TDsv);			/* local $_TD */
	FUNC11(TDsv, td);

	FUNC0(sp);
	PUTBACK;

	/* Do NOT use G_KEEPERR here */
	count = FUNC7(desc->reference, G_SCALAR | G_EVAL);

	SPAGAIN;

	if (count != 1)
	{
		PUTBACK;
		FREETMPS;
		LEAVE;
		FUNC2(ERROR,
				(FUNC3(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC4("didn't get a return item from trigger function")));
	}

	if (FUNC1(ERRSV))
	{
		(void) POPs;
		PUTBACK;
		FREETMPS;
		LEAVE;
		/* XXX need to find a way to determine a better errcode here */
		FUNC2(ERROR,
				(FUNC3(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC4("%s", FUNC9(FUNC10(ERRSV)))));
	}

	retval = FUNC6(POPs);
	(void) retval;				/* silence compiler warning */

	PUTBACK;
	FREETMPS;
	LEAVE;

	return;
}