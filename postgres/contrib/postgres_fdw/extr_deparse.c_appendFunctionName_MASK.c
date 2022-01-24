#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_expr_cxt ;
struct TYPE_5__ {scalar_t__ pronamespace; int /*<<< orphan*/  proname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11(Oid funcid, deparse_expr_cxt *context)
{
	StringInfo	buf = context->buf;
	HeapTuple	proctup;
	Form_pg_proc procform;
	const char *proname;

	proctup = FUNC5(PROCOID, FUNC3(funcid));
	if (!FUNC1(proctup))
		FUNC8(ERROR, "cache lookup failed for function %u", funcid);
	procform = (Form_pg_proc) FUNC0(proctup);

	/* Print schema name only if it's not pg_catalog */
	if (procform->pronamespace != PG_CATALOG_NAMESPACE)
	{
		const char *schemaname;

		schemaname = FUNC9(procform->pronamespace);
		FUNC6(buf, "%s.", FUNC10(schemaname));
	}

	/* Always print the function name */
	proname = FUNC2(procform->proname);
	FUNC7(buf, FUNC10(proname));

	FUNC4(proctup);
}