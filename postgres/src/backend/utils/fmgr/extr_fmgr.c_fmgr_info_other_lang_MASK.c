#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fn_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  lanplcallfoid; } ;
struct TYPE_6__ {int /*<<< orphan*/  prolang; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;
typedef  TYPE_2__* Form_pg_language ;
typedef  TYPE_3__ FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANGOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(Oid functionId, FmgrInfo *finfo, HeapTuple procedureTuple)
{
	Form_pg_proc procedureStruct = (Form_pg_proc) FUNC0(procedureTuple);
	Oid			language = procedureStruct->prolang;
	HeapTuple	languageTuple;
	Form_pg_language languageStruct;
	FmgrInfo	plfinfo;

	languageTuple = FUNC4(LANGOID, FUNC2(language));
	if (!FUNC1(languageTuple))
		FUNC5(ERROR, "cache lookup failed for language %u", language);
	languageStruct = (Form_pg_language) FUNC0(languageTuple);

	/*
	 * Look up the language's call handler function, ignoring any attributes
	 * that would normally cause insertion of fmgr_security_definer.  We need
	 * to get back a bare pointer to the actual C-language function.
	 */
	FUNC6(languageStruct->lanplcallfoid, &plfinfo,
						   CurrentMemoryContext, true);
	finfo->fn_addr = plfinfo.fn_addr;

	FUNC3(languageTuple);
}