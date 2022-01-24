#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fp_info {int /*<<< orphan*/  funcid; int /*<<< orphan*/  fname; int /*<<< orphan*/  argtypes; int /*<<< orphan*/  rettype; int /*<<< orphan*/  namespace; int /*<<< orphan*/  flinfo; } ;
struct TYPE_3__ {int /*<<< orphan*/  values; } ;
struct TYPE_4__ {int pronargs; int /*<<< orphan*/  proname; TYPE_1__ proargtypes; int /*<<< orphan*/  prorettype; int /*<<< orphan*/  pronamespace; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC_MAX_ARGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (struct fp_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(Oid func_id, struct fp_info *fip)
{
	HeapTuple	func_htp;
	Form_pg_proc pp;

	FUNC0(FUNC6(func_id));
	FUNC0(fip != NULL);

	/*
	 * Since the validity of this structure is determined by whether the
	 * funcid is OK, we clear the funcid here.  It must not be set to the
	 * correct value until we are about to return with a good struct fp_info,
	 * since we can be interrupted (i.e., with an ereport(ERROR, ...)) at any
	 * time.  [No longer really an issue since we don't save the struct
	 * fp_info across transactions anymore, but keep it anyway.]
	 */
	FUNC3(fip, 0, sizeof(struct fp_info));
	fip->funcid = InvalidOid;

	FUNC13(func_id, &fip->flinfo);

	func_htp = FUNC8(PROCOID, FUNC5(func_id));
	if (!FUNC2(func_htp))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC12("function with OID %u does not exist", func_id)));
	pp = (Form_pg_proc) FUNC1(func_htp);

	/* watch out for catalog entries with more than FUNC_MAX_ARGS args */
	if (pp->pronargs > FUNC_MAX_ARGS)
		FUNC9(ERROR, "function %s has more than %d arguments",
			 FUNC4(pp->proname), FUNC_MAX_ARGS);

	fip->namespace = pp->pronamespace;
	fip->rettype = pp->prorettype;
	FUNC14(fip->argtypes, pp->proargtypes.values, pp->pronargs * sizeof(Oid));
	FUNC15(fip->fname, FUNC4(pp->proname), NAMEDATALEN);

	FUNC7(func_htp);

	/*
	 * This must be last!
	 */
	fip->funcid = func_id;
}