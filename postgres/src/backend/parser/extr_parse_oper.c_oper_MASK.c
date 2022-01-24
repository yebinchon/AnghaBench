#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  OprCacheKey ;
typedef  int /*<<< orphan*/  Operator ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  FuncDetailCode ;
typedef  int /*<<< orphan*/ * FuncCandidateList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNCDETAIL_NOTFOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Operator
FUNC11(ParseState *pstate, List *opname, Oid ltypeId, Oid rtypeId,
	 bool noError, int location)
{
	Oid			operOid;
	OprCacheKey key;
	bool		key_ok;
	FuncDetailCode fdresult = FUNCDETAIL_NOTFOUND;
	HeapTuple	tup = NULL;

	/*
	 * Try to find the mapping in the lookaside cache.
	 */
	key_ok = FUNC8(pstate, &key, opname, ltypeId, rtypeId, location);

	if (key_ok)
	{
		operOid = FUNC6(&key);
		if (FUNC2(operOid))
		{
			tup = FUNC4(OPEROID, FUNC1(operOid));
			if (FUNC0(tup))
				return (Operator) tup;
		}
	}

	/*
	 * First try for an "exact" match.
	 */
	operOid = FUNC5(opname, ltypeId, rtypeId);
	if (!FUNC2(operOid))
	{
		/*
		 * Otherwise, search for the most suitable candidate.
		 */
		FuncCandidateList clist;

		/* Get binary operators of given name */
		clist = FUNC3(opname, 'b', false);

		/* No operators found? Then fail... */
		if (clist != NULL)
		{
			/*
			 * Unspecified type for one of the arguments? then use the other
			 * (XXX this is probably dead code?)
			 */
			Oid			inputOids[2];

			if (rtypeId == InvalidOid)
				rtypeId = ltypeId;
			else if (ltypeId == InvalidOid)
				ltypeId = rtypeId;
			inputOids[0] = ltypeId;
			inputOids[1] = rtypeId;
			fdresult = FUNC10(2, inputOids, clist, &operOid);
		}
	}

	if (FUNC2(operOid))
		tup = FUNC4(OPEROID, FUNC1(operOid));

	if (FUNC0(tup))
	{
		if (key_ok)
			FUNC7(&key, operOid);
	}
	else if (!noError)
		FUNC9(pstate, opname, 'b', ltypeId, rtypeId, fdresult, location);

	return (Operator) tup;
}