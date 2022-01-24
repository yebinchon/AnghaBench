#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  func; int /*<<< orphan*/  retset; int /*<<< orphan*/  strict; int /*<<< orphan*/  nargs; } ;
struct TYPE_10__ {void* fn_oid; void* fn_stats; int /*<<< orphan*/  fn_addr; int /*<<< orphan*/  fn_retset; int /*<<< orphan*/  fn_strict; int /*<<< orphan*/  fn_nargs; int /*<<< orphan*/ * fn_expr; int /*<<< orphan*/  fn_mcxt; int /*<<< orphan*/ * fn_extra; } ;
struct TYPE_9__ {int prolang; scalar_t__ prosecdef; int /*<<< orphan*/  proretset; int /*<<< orphan*/  proisstrict; int /*<<< orphan*/  pronargs; } ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;
typedef  TYPE_2__ FmgrInfo ;
typedef  TYPE_3__ FmgrBuiltin ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_proc_proconfig ; 
 int /*<<< orphan*/  Anum_pg_proc_prosrc ; 
#define  ClanguageId 130 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  INTERNALlanguageId 129 
 void* InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  SQLlanguageId 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 void* TRACK_FUNC_ALL ; 
 void* TRACK_FUNC_OFF ; 
 void* TRACK_FUNC_PL ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (void*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (void*) ; 
 TYPE_3__* FUNC15 (char*) ; 
 int /*<<< orphan*/  fmgr_security_definer ; 
 int /*<<< orphan*/  fmgr_sql ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(Oid functionId, FmgrInfo *finfo, MemoryContext mcxt,
					   bool ignore_security)
{
	const FmgrBuiltin *fbp;
	HeapTuple	procedureTuple;
	Form_pg_proc procedureStruct;
	Datum		prosrcdatum;
	bool		isnull;
	char	   *prosrc;

	/*
	 * fn_oid *must* be filled in last.  Some code assumes that if fn_oid is
	 * valid, the whole struct is valid.  Some FmgrInfo struct's do survive
	 * elogs.
	 */
	finfo->fn_oid = InvalidOid;
	finfo->fn_extra = NULL;
	finfo->fn_mcxt = mcxt;
	finfo->fn_expr = NULL;		/* caller may set this later */

	if ((fbp = FUNC14(functionId)) != NULL)
	{
		/*
		 * Fast path for builtin functions: don't bother consulting pg_proc
		 */
		finfo->fn_nargs = fbp->nargs;
		finfo->fn_strict = fbp->strict;
		finfo->fn_retset = fbp->retset;
		finfo->fn_stats = TRACK_FUNC_ALL;	/* ie, never track */
		finfo->fn_addr = fbp->func;
		finfo->fn_oid = functionId;
		return;
	}

	/* Otherwise we need the pg_proc entry */
	procedureTuple = FUNC5(PROCOID, FUNC3(functionId));
	if (!FUNC2(procedureTuple))
		FUNC8(ERROR, "cache lookup failed for function %u", functionId);
	procedureStruct = (Form_pg_proc) FUNC1(procedureTuple);

	finfo->fn_nargs = procedureStruct->pronargs;
	finfo->fn_strict = procedureStruct->proisstrict;
	finfo->fn_retset = procedureStruct->proretset;

	/*
	 * If it has prosecdef set, non-null proconfig, or if a plugin wants to
	 * hook function entry/exit, use fmgr_security_definer call handler ---
	 * unless we are being called again by fmgr_security_definer or
	 * fmgr_info_other_lang.
	 *
	 * When using fmgr_security_definer, function stats tracking is always
	 * disabled at the outer level, and instead we set the flag properly in
	 * fmgr_security_definer's private flinfo and implement the tracking
	 * inside fmgr_security_definer.  This loses the ability to charge the
	 * overhead of fmgr_security_definer to the function, but gains the
	 * ability to set the track_functions GUC as a local GUC parameter of an
	 * interesting function and have the right things happen.
	 */
	if (!ignore_security &&
		(procedureStruct->prosecdef ||
		 !FUNC16(procedureTuple, Anum_pg_proc_proconfig, NULL) ||
		 FUNC0(functionId)))
	{
		finfo->fn_addr = fmgr_security_definer;
		finfo->fn_stats = TRACK_FUNC_ALL;	/* ie, never track */
		finfo->fn_oid = functionId;
		FUNC4(procedureTuple);
		return;
	}

	switch (procedureStruct->prolang)
	{
		case INTERNALlanguageId:

			/*
			 * For an ordinary builtin function, we should never get here
			 * because the fmgr_isbuiltin() search above will have succeeded.
			 * However, if the user has done a CREATE FUNCTION to create an
			 * alias for a builtin function, we can end up here.  In that case
			 * we have to look up the function by name.  The name of the
			 * internal function is stored in prosrc (it doesn't have to be
			 * the same as the name of the alias!)
			 */
			prosrcdatum = FUNC6(PROCOID, procedureTuple,
										  Anum_pg_proc_prosrc, &isnull);
			if (isnull)
				FUNC8(ERROR, "null prosrc");
			prosrc = FUNC7(prosrcdatum);
			fbp = FUNC15(prosrc);
			if (fbp == NULL)
				FUNC9(ERROR,
						(FUNC10(ERRCODE_UNDEFINED_FUNCTION),
						 FUNC11("internal function \"%s\" is not in internal lookup table",
								prosrc)));
			FUNC17(prosrc);
			/* Should we check that nargs, strict, retset match the table? */
			finfo->fn_addr = fbp->func;
			/* note this policy is also assumed in fast path above */
			finfo->fn_stats = TRACK_FUNC_ALL;	/* ie, never track */
			break;

		case ClanguageId:
			FUNC12(functionId, finfo, procedureTuple);
			finfo->fn_stats = TRACK_FUNC_PL;	/* ie, track if ALL */
			break;

		case SQLlanguageId:
			finfo->fn_addr = fmgr_sql;
			finfo->fn_stats = TRACK_FUNC_PL;	/* ie, track if ALL */
			break;

		default:
			FUNC13(functionId, finfo, procedureTuple);
			finfo->fn_stats = TRACK_FUNC_OFF;	/* ie, track if not OFF */
			break;
	}

	finfo->fn_oid = functionId;
	FUNC4(procedureTuple);
}