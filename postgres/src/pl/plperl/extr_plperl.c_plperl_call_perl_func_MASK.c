#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nargs; int /*<<< orphan*/  reference; int /*<<< orphan*/ * arg_out_func; int /*<<< orphan*/ * arg_arraytype; scalar_t__* arg_is_rowtype; } ;
typedef  TYPE_4__ plperl_proc_desc ;
struct TYPE_14__ {TYPE_2__* prodesc; } ;
struct TYPE_13__ {TYPE_3__* args; TYPE_1__* flinfo; } ;
struct TYPE_11__ {int /*<<< orphan*/  value; scalar_t__ isnull; } ;
struct TYPE_10__ {int /*<<< orphan*/  trftypes; int /*<<< orphan*/  lang_oid; } ;
struct TYPE_9__ {scalar_t__ fn_oid; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_5__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ERRSV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FREETMPS ; 
 int G_EVAL ; 
 int G_SCALAR ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_sv_undef ; 
 int /*<<< orphan*/  POPs ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PUTBACK ; 
 int /*<<< orphan*/  SAVETMPS ; 
 int /*<<< orphan*/  SP ; 
 int /*<<< orphan*/  SPAGAIN ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 TYPE_8__* current_call_data ; 
 int /*<<< orphan*/  dSP ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SV  *
FUNC23(plperl_proc_desc *desc, FunctionCallInfo fcinfo)
{
	dTHX;
	dSP;
	SV		   *retval;
	int			i;
	int			count;
	Oid		   *argtypes = NULL;
	int			nargs = 0;

	ENTER;
	SAVETMPS;

	FUNC6(SP);
	FUNC2(sp, desc->nargs);

	/* Get signature for true functions; inline blocks have no args. */
	if (fcinfo->flinfo->fn_oid)
		FUNC13(fcinfo->flinfo->fn_oid, &argtypes, &nargs);
	FUNC0(nargs == desc->nargs);

	for (i = 0; i < desc->nargs; i++)
	{
		if (fcinfo->args[i].isnull)
			FUNC7(&PL_sv_undef);
		else if (desc->arg_is_rowtype[i])
		{
			SV		   *sv = FUNC18(fcinfo->args[i].value);

			FUNC7(FUNC22(sv));
		}
		else
		{
			SV		   *sv;
			Oid			funcid;

			if (FUNC4(desc->arg_arraytype[i]))
				sv = FUNC19(fcinfo->args[i].value, desc->arg_arraytype[i]);
			else if ((funcid = FUNC14(argtypes[i], current_call_data->prodesc->lang_oid, current_call_data->prodesc->trftypes)))
				sv = (SV *) FUNC1(FUNC3(funcid, fcinfo->args[i].value));
			else
			{
				char	   *tmp;

				tmp = FUNC5(&(desc->arg_out_func[i]),
										 fcinfo->args[i].value);
				sv = FUNC9(tmp);
				FUNC17(tmp);
			}

			FUNC7(FUNC22(sv));
		}
	}
	PUTBACK;

	/* Do NOT use G_KEEPERR here */
	count = FUNC16(desc->reference, G_SCALAR | G_EVAL);

	SPAGAIN;

	if (count != 1)
	{
		PUTBACK;
		FREETMPS;
		LEAVE;
		FUNC10(ERROR,
				(FUNC11(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC12("didn't get a return item from function")));
	}

	if (FUNC8(ERRSV))
	{
		(void) POPs;
		PUTBACK;
		FREETMPS;
		LEAVE;
		/* XXX need to find a way to determine a better errcode here */
		FUNC10(ERROR,
				(FUNC11(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC12("%s", FUNC20(FUNC21(ERRSV)))));
	}

	retval = FUNC15(POPs);

	PUTBACK;
	FREETMPS;
	LEAVE;

	return retval;
}