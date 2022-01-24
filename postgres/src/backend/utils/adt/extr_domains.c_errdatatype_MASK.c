#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  typname; int /*<<< orphan*/  typnamespace; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_DIAG_DATATYPE_NAME ; 
 int /*<<< orphan*/  PG_DIAG_SCHEMA_NAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(Oid datatypeOid)
{
	HeapTuple	tup;
	Form_pg_type typtup;

	tup = FUNC5(TYPEOID, FUNC3(datatypeOid));
	if (!FUNC1(tup))
		FUNC6(ERROR, "cache lookup failed for type %u", datatypeOid);
	typtup = (Form_pg_type) FUNC0(tup);

	FUNC7(PG_DIAG_SCHEMA_NAME,
					   FUNC8(typtup->typnamespace));
	FUNC7(PG_DIAG_DATATYPE_NAME, FUNC2(typtup->typname));

	FUNC4(tup);

	return 0;					/* return value does not matter */
}