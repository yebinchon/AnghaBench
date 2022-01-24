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
struct TYPE_2__ {int /*<<< orphan*/  seqstart; int /*<<< orphan*/  seqmin; int /*<<< orphan*/  seqmax; int /*<<< orphan*/  seqincrement; int /*<<< orphan*/  seqcycle; int /*<<< orphan*/  seqcache; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_sequence ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT64_FORMAT ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEQRELID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC10(Oid relid)
{
	HeapTuple	pgstuple;
	Form_pg_sequence pgsform;
	List	   *options = NIL;

	pgstuple = FUNC3(SEQRELID, relid);
	if (!FUNC1(pgstuple))
		FUNC4(ERROR, "cache lookup failed for sequence %u", relid);
	pgsform = (Form_pg_sequence) FUNC0(pgstuple);

	/* Use makeFloat() for 64-bit integers, like gram.y does. */
	options = FUNC5(options,
					  FUNC6("cache", (Node *) FUNC7(FUNC9(INT64_FORMAT, pgsform->seqcache)), -1));
	options = FUNC5(options,
					  FUNC6("cycle", (Node *) FUNC8(pgsform->seqcycle), -1));
	options = FUNC5(options,
					  FUNC6("increment", (Node *) FUNC7(FUNC9(INT64_FORMAT, pgsform->seqincrement)), -1));
	options = FUNC5(options,
					  FUNC6("maxvalue", (Node *) FUNC7(FUNC9(INT64_FORMAT, pgsform->seqmax)), -1));
	options = FUNC5(options,
					  FUNC6("minvalue", (Node *) FUNC7(FUNC9(INT64_FORMAT, pgsform->seqmin)), -1));
	options = FUNC5(options,
					  FUNC6("start", (Node *) FUNC7(FUNC9(INT64_FORMAT, pgsform->seqstart)), -1));

	FUNC2(pgstuple);

	return options;
}