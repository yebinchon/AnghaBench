#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  values; } ;
struct TYPE_7__ {scalar_t__ pronamespace; int pronargs; TYPE_1__ proargtypes; int /*<<< orphan*/  proname; } ;
struct TYPE_6__ {scalar_t__ oid; int /*<<< orphan*/  args; struct TYPE_6__* next; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* FuncCandidateList ;
typedef  TYPE_3__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activeSearchPath ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

bool
FUNC13(Oid funcid)
{
	HeapTuple	proctup;
	Form_pg_proc procform;
	Oid			pronamespace;
	bool		visible;

	proctup = FUNC6(PROCOID, FUNC4(funcid));
	if (!FUNC2(proctup))
		FUNC7(ERROR, "cache lookup failed for function %u", funcid);
	procform = (Form_pg_proc) FUNC1(proctup);

	FUNC12();

	/*
	 * Quick check: if it ain't in the path at all, it ain't visible. Items in
	 * the system namespace are surely in the path and so we needn't even do
	 * list_member_oid() for them.
	 */
	pronamespace = procform->pronamespace;
	if (pronamespace != PG_CATALOG_NAMESPACE &&
		!FUNC9(activeSearchPath, pronamespace))
		visible = false;
	else
	{
		/*
		 * If it is in the path, it might still not be visible; it could be
		 * hidden by another proc of the same name and arguments earlier in
		 * the path.  So we must do a slow check to see if this is the same
		 * proc that would be found by FuncnameGetCandidates.
		 */
		char	   *proname = FUNC3(procform->proname);
		int			nargs = procform->pronargs;
		FuncCandidateList clist;

		visible = false;

		clist = FUNC0(FUNC8(FUNC10(proname)),
									  nargs, NIL, false, false, false);

		for (; clist; clist = clist->next)
		{
			if (FUNC11(clist->args, procform->proargtypes.values,
					   nargs * sizeof(Oid)) == 0)
			{
				/* Found the expected entry; is it the right proc? */
				visible = (clist->oid == funcid);
				break;
			}
		}
	}

	FUNC5(proctup);

	return visible;
}