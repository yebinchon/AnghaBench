#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_3__ {scalar_t__ commandType; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMD_SELECT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(StringInfo buf, HeapTuple ruletup, TupleDesc rulettc,
			 int prettyFlags, int wrapColumn)
{
	Query	   *query;
	char		ev_type;
	Oid			ev_class;
	bool		is_instead;
	char	   *ev_qual;
	char	   *ev_action;
	List	   *actions = NIL;
	Relation	ev_relation;
	int			fno;
	Datum		dat;
	bool		isnull;

	/*
	 * Get the attribute values from the rules tuple
	 */
	fno = FUNC5(rulettc, "ev_type");
	dat = FUNC6(ruletup, rulettc, fno, &isnull);
	FUNC0(!isnull);
	ev_type = FUNC2(dat);

	fno = FUNC5(rulettc, "ev_class");
	dat = FUNC6(ruletup, rulettc, fno, &isnull);
	FUNC0(!isnull);
	ev_class = FUNC3(dat);

	fno = FUNC5(rulettc, "is_instead");
	dat = FUNC6(ruletup, rulettc, fno, &isnull);
	FUNC0(!isnull);
	is_instead = FUNC1(dat);

	/* these could be nulls */
	fno = FUNC5(rulettc, "ev_qual");
	ev_qual = FUNC7(ruletup, rulettc, fno);

	fno = FUNC5(rulettc, "ev_action");
	ev_action = FUNC7(ruletup, rulettc, fno);
	if (ev_action != NULL)
		actions = (List *) FUNC13(ev_action);

	if (FUNC11(actions) != 1)
	{
		/* keep output buffer empty and leave */
		return;
	}

	query = (Query *) FUNC10(actions);

	if (ev_type != '1' || !is_instead ||
		FUNC12(ev_qual, "<>") != 0 || query->commandType != CMD_SELECT)
	{
		/* keep output buffer empty and leave */
		return;
	}

	ev_relation = FUNC15(ev_class, AccessShareLock);

	FUNC9(query, buf, NIL, FUNC4(ev_relation),
				  prettyFlags, wrapColumn, 0);
	FUNC8(buf, ';');

	FUNC14(ev_relation, AccessShareLock);
}