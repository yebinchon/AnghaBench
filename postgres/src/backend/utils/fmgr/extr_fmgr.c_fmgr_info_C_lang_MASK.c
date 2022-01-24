#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* inforec; int /*<<< orphan*/  user_fn; } ;
struct TYPE_9__ {int /*<<< orphan*/  fn_addr; } ;
struct TYPE_8__ {int api_version; } ;
typedef  TYPE_1__ Pg_finfo_record ;
typedef  int /*<<< orphan*/  PGFunction ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ CFuncHashTabEntry ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_proc_probin ; 
 int /*<<< orphan*/  Anum_pg_proc_prosrc ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,void**) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const*) ; 

__attribute__((used)) static void
FUNC8(Oid functionId, FmgrInfo *finfo, HeapTuple procedureTuple)
{
	CFuncHashTabEntry *hashentry;
	PGFunction	user_fn;
	const Pg_finfo_record *inforec;
	bool		isnull;

	/*
	 * See if we have the function address cached already
	 */
	hashentry = FUNC5(procedureTuple);
	if (hashentry)
	{
		user_fn = hashentry->user_fn;
		inforec = hashentry->inforec;
	}
	else
	{
		Datum		prosrcattr,
					probinattr;
		char	   *prosrcstring,
				   *probinstring;
		void	   *libraryhandle;

		/*
		 * Get prosrc and probin strings (link symbol and library filename).
		 * While in general these columns might be null, that's not allowed
		 * for C-language functions.
		 */
		prosrcattr = FUNC0(PROCOID, procedureTuple,
									 Anum_pg_proc_prosrc, &isnull);
		if (isnull)
			FUNC2(ERROR, "null prosrc for C function %u", functionId);
		prosrcstring = FUNC1(prosrcattr);

		probinattr = FUNC0(PROCOID, procedureTuple,
									 Anum_pg_proc_probin, &isnull);
		if (isnull)
			FUNC2(ERROR, "null probin for C function %u", functionId);
		probinstring = FUNC1(probinattr);

		/* Look up the function itself */
		user_fn = FUNC4(probinstring, prosrcstring, true,
										 &libraryhandle);

		/* Get the function information record (real or default) */
		inforec = FUNC3(libraryhandle, prosrcstring);

		/* Cache the addresses for later calls */
		FUNC7(procedureTuple, user_fn, inforec);

		FUNC6(prosrcstring);
		FUNC6(probinstring);
	}

	switch (inforec->api_version)
	{
		case 1:
			/* New style: call directly */
			finfo->fn_addr = user_fn;
			break;
		default:
			/* Shouldn't get here if fetch_finfo_record did its job */
			FUNC2(ERROR, "unrecognized function API version: %d",
				 inforec->api_version);
			break;
	}
}