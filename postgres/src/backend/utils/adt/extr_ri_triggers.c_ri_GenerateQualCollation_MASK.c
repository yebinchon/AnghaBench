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
struct TYPE_2__ {int /*<<< orphan*/  collnamespace; int /*<<< orphan*/  collname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_collation ;

/* Variables and functions */
 int /*<<< orphan*/  COLLOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_QUOTED_NAME_LEN ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(StringInfo buf, Oid collation)
{
	HeapTuple	tp;
	Form_pg_collation colltup;
	char	   *collname;
	char		onename[MAX_QUOTED_NAME_LEN];

	/* Nothing to do if it's a noncollatable data type */
	if (!FUNC4(collation))
		return;

	tp = FUNC6(COLLOID, FUNC3(collation));
	if (!FUNC1(tp))
		FUNC8(ERROR, "cache lookup failed for collation %u", collation);
	colltup = (Form_pg_collation) FUNC0(tp);
	collname = FUNC2(colltup->collname);

	/*
	 * We qualify the name always, for simplicity and to ensure the query is
	 * not search-path-dependent.
	 */
	FUNC10(onename, FUNC9(colltup->collnamespace));
	FUNC7(buf, " COLLATE %s", onename);
	FUNC10(onename, collname);
	FUNC7(buf, ".%s", onename);

	FUNC5(tp);
}