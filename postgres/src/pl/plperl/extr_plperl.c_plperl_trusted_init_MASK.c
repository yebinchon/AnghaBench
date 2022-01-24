#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  I32 ;
typedef  int /*<<< orphan*/  HV ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ERRSV ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GV_ADDWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t OP_DOFILE ; 
 size_t OP_REQUIRE ; 
 char* PLC_TRUSTED ; 
 int /*<<< orphan*/  PL_op_mask ; 
 int /*<<< orphan*/ * PL_ppaddr ; 
 int /*<<< orphan*/ * PL_stashcache ; 
 int /*<<< orphan*/  PL_sub_generation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* plperl_on_plperl_init ; 
 int /*<<< orphan*/  plperl_opmask ; 
 int /*<<< orphan*/  pp_require_orig ; 
 int /*<<< orphan*/  pp_require_safe ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(void)
{
	dTHX;
	HV		   *stash;
	SV		   *sv;
	char	   *key;
	I32			klen;

	/* use original require while we set up */
	PL_ppaddr[OP_REQUIRE] = pp_require_orig;
	PL_ppaddr[OP_DOFILE] = pp_require_orig;

	FUNC8(PLC_TRUSTED, FALSE);
	if (FUNC3(ERRSV))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC7("%s", FUNC14(FUNC15(ERRSV))),
				 FUNC6("while executing PLC_TRUSTED")));

	/*
	 * Force loading of utf8 module now to prevent errors that can arise from
	 * the regex code later trying to load utf8 modules. See
	 * http://rt.perl.org/rt3/Ticket/Display.html?id=47576
	 */
	FUNC8("my $a=chr(0x100); return $a =~ /\\xa9/i", FALSE);
	if (FUNC3(ERRSV))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC7("%s", FUNC14(FUNC15(ERRSV))),
				 FUNC6("while executing utf8fix")));

	/*
	 * Lock down the interpreter
	 */

	/* switch to the safe require/dofile opcode for future code */
	PL_ppaddr[OP_REQUIRE] = pp_require_safe;
	PL_ppaddr[OP_DOFILE] = pp_require_safe;

	/*
	 * prevent (any more) unsafe opcodes being compiled PL_op_mask is per
	 * interpreter, so this only needs to be set once
	 */
	PL_op_mask = plperl_opmask;

	/* delete the DynaLoader:: namespace so extensions can't be loaded */
	stash = FUNC9("DynaLoader", GV_ADDWARN);
	FUNC11(stash);
	while ((sv = FUNC12(stash, &key, &klen)))
	{
		if (!FUNC13(sv) || !FUNC0(sv))
			continue;
		FUNC2(FUNC0(sv)); /* free the CV */
		FUNC1(sv, NULL);		/* prevent call via GV */
	}
	FUNC10(stash);

	/* invalidate assorted caches */
	++PL_sub_generation;
	FUNC10(PL_stashcache);

	/*
	 * Execute plperl.on_plperl_init in the locked-down interpreter
	 */
	if (plperl_on_plperl_init && *plperl_on_plperl_init)
	{
		FUNC8(plperl_on_plperl_init, FALSE);
		/* XXX need to find a way to determine a better errcode here */
		if (FUNC3(ERRSV))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
					 FUNC7("%s", FUNC14(FUNC15(ERRSV))),
					 FUNC6("while executing plperl.on_plperl_init")));
	}
}