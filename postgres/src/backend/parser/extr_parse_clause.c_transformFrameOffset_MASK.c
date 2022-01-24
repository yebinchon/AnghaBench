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
struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amprocnum; scalar_t__ amprocrighttype; scalar_t__ amproc; } ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_amproc ;
typedef  TYPE_3__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  AMPROCNUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTINRANGE_PROC ; 
 int /*<<< orphan*/  COERCION_IMPLICIT ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXPR_KIND_WINDOW_FRAME_GROUPS ; 
 int /*<<< orphan*/  EXPR_KIND_WINDOW_FRAME_RANGE ; 
 int /*<<< orphan*/  EXPR_KIND_WINDOW_FRAME_ROWS ; 
 int FRAMEOPTION_GROUPS ; 
 int FRAMEOPTION_RANGE ; 
 int FRAMEOPTION_ROWS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ INT8OID ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UNKNOWNOID ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC17(ParseState *pstate, int frameOptions,
					 Oid rangeopfamily, Oid rangeopcintype, Oid *inRangeFunc,
					 Node *clause)
{
	const char *constructName = NULL;
	Node	   *node;

	*inRangeFunc = InvalidOid;	/* default result */

	/* Quick exit if no offset expression */
	if (clause == NULL)
		return NULL;

	if (frameOptions & FRAMEOPTION_ROWS)
	{
		/* Transform the raw expression tree */
		node = FUNC16(pstate, clause, EXPR_KIND_WINDOW_FRAME_ROWS);

		/*
		 * Like LIMIT clause, simply coerce to int8
		 */
		constructName = "ROWS";
		node = FUNC7(pstate, node, INT8OID, constructName);
	}
	else if (frameOptions & FRAMEOPTION_RANGE)
	{
		/*
		 * We must look up the in_range support function that's to be used,
		 * possibly choosing one of several, and coerce the "offset" value to
		 * the appropriate input type.
		 */
		Oid			nodeType;
		Oid			preferredType;
		int			nfuncs = 0;
		int			nmatches = 0;
		Oid			selectedType = InvalidOid;
		Oid			selectedFunc = InvalidOid;
		CatCList   *proclist;
		int			i;

		/* Transform the raw expression tree */
		node = FUNC16(pstate, clause, EXPR_KIND_WINDOW_FRAME_RANGE);
		nodeType = FUNC13(node);

		/*
		 * If there are multiple candidates, we'll prefer the one that exactly
		 * matches nodeType; or if nodeType is as yet unknown, prefer the one
		 * that exactly matches the sort column type.  (The second rule is
		 * like what we do for "known_type operator unknown".)
		 */
		preferredType = (nodeType != UNKNOWNOID) ? nodeType : rangeopcintype;

		/* Find the in_range support functions applicable to this case */
		proclist = FUNC4(AMPROCNUM,
									   FUNC2(rangeopfamily),
									   FUNC2(rangeopcintype));
		for (i = 0; i < proclist->n_members; i++)
		{
			HeapTuple	proctup = &proclist->members[i]->tuple;
			Form_pg_amproc procform = (Form_pg_amproc) FUNC1(proctup);

			/* The search will find all support proc types; ignore others */
			if (procform->amprocnum != BTINRANGE_PROC)
				continue;
			nfuncs++;

			/* Ignore function if given value can't be coerced to that type */
			if (!FUNC5(1, &nodeType, &procform->amprocrighttype,
								 COERCION_IMPLICIT))
				continue;
			nmatches++;

			/* Remember preferred match, or any match if didn't find that */
			if (selectedType != preferredType)
			{
				selectedType = procform->amprocrighttype;
				selectedFunc = procform->amproc;
			}
		}
		FUNC3(proclist);

		/*
		 * Throw error if needed.  It seems worth taking the trouble to
		 * distinguish "no support at all" from "you didn't match any
		 * available offset type".
		 */
		if (nfuncs == 0)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC11("RANGE with offset PRECEDING/FOLLOWING is not supported for column type %s",
							FUNC14(rangeopcintype)),
					 FUNC15(pstate, FUNC12(node))));
		if (nmatches == 0)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC11("RANGE with offset PRECEDING/FOLLOWING is not supported for column type %s and offset type %s",
							FUNC14(rangeopcintype),
							FUNC14(nodeType)),
					 FUNC10("Cast the offset value to an appropriate type."),
					 FUNC15(pstate, FUNC12(node))));
		if (nmatches != 1 && selectedType != preferredType)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC11("RANGE with offset PRECEDING/FOLLOWING has multiple interpretations for column type %s and offset type %s",
							FUNC14(rangeopcintype),
							FUNC14(nodeType)),
					 FUNC10("Cast the offset value to the exact intended type."),
					 FUNC15(pstate, FUNC12(node))));

		/* OK, coerce the offset to the right type */
		constructName = "RANGE";
		node = FUNC7(pstate, node,
									   selectedType, constructName);
		*inRangeFunc = selectedFunc;
	}
	else if (frameOptions & FRAMEOPTION_GROUPS)
	{
		/* Transform the raw expression tree */
		node = FUNC16(pstate, clause, EXPR_KIND_WINDOW_FRAME_GROUPS);

		/*
		 * Like LIMIT clause, simply coerce to int8
		 */
		constructName = "GROUPS";
		node = FUNC7(pstate, node, INT8OID, constructName);
	}
	else
	{
		FUNC0(false);
		node = NULL;
	}

	/* Disallow variables in frame offsets */
	FUNC6(pstate, node, constructName);

	return node;
}