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
struct TYPE_3__ {char* proname; int /*<<< orphan*/ * reference; } ;
typedef  TYPE_1__ plperl_proc_desc ;
typedef  int /*<<< orphan*/  SV ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  HV ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ERRSV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FREETMPS ; 
 int G_EVAL ; 
 int G_KEEPERR ; 
 int G_SCALAR ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  PL_sv_no ; 
 scalar_t__ POPs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PUTBACK ; 
 int /*<<< orphan*/  SAVETMPS ; 
 int /*<<< orphan*/  SP ; 
 int /*<<< orphan*/  SPAGAIN ; 
 scalar_t__ SVt_PVCV ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  dSP ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (char*,int) ; 
 scalar_t__ plperl_use_strict ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,int) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(plperl_proc_desc *prodesc, const char *s, Oid fn_oid)
{
	dTHX;
	dSP;
	char		subname[NAMEDATALEN + 40];
	HV		   *pragma_hv = FUNC13();
	SV		   *subref = NULL;
	int			count;

	FUNC17(subname, "%s__%u", prodesc->proname, fn_oid);

	if (plperl_use_strict)
		FUNC11(pragma_hv, "strict", (SV *) FUNC12());

	ENTER;
	SAVETMPS;
	FUNC1(SP);
	FUNC0(SP, 4);
	FUNC2(FUNC20(FUNC7(subname)));
	FUNC2(FUNC20(FUNC15((SV *) pragma_hv)));

	/*
	 * Use 'false' for $prolog in mkfunc, which is kept for compatibility in
	 * case a module such as PostgreSQL::PLPerl::NYTprof replaces the function
	 * compiler.
	 */
	FUNC2(&PL_sv_no);
	FUNC2(FUNC20(FUNC7(s)));
	PUTBACK;

	/*
	 * G_KEEPERR seems to be needed here, else we don't recognize compile
	 * errors properly.  Perhaps it's because there's another level of eval
	 * inside mksafefunc?
	 */
	count = FUNC16("PostgreSQL::InServer::mkfunc",
						 G_SCALAR | G_EVAL | G_KEEPERR);
	SPAGAIN;

	if (count == 1)
	{
		SV		   *sub_rv = (SV *) POPs;

		if (sub_rv && FUNC3(sub_rv) && FUNC6(FUNC4(sub_rv)) == SVt_PVCV)
		{
			subref = FUNC14(FUNC4(sub_rv));
		}
	}

	PUTBACK;
	FREETMPS;
	LEAVE;

	if (FUNC5(ERRSV))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_SYNTAX_ERROR),
				 FUNC10("%s", FUNC18(FUNC19(ERRSV)))));

	if (!subref)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_SYNTAX_ERROR),
				 FUNC10("didn't get a CODE reference from compiling function \"%s\"",
						prodesc->proname)));

	prodesc->reference = subref;

	return;
}