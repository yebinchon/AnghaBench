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
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  PLpgSQL_type ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plpgsql_compile_tmp_cxt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

PLpgSQL_type *
FUNC10(List *idents)
{
	Oid			classOid;
	RangeVar   *relvar;
	MemoryContext oldCxt;

	/*
	 * As above, this is a relation lookup but could be a type lookup if we
	 * weren't being backwards-compatible about error wording.
	 */
	if (FUNC4(idents) != 2)
		return NULL;

	/* Avoid memory leaks in long-term function context */
	oldCxt = FUNC0(plpgsql_compile_tmp_cxt);

	/* Look up relation name.  Can't lock it - we might not have privileges. */
	relvar = FUNC6(FUNC9(FUNC3(idents)),
						  FUNC9(FUNC5(idents)),
						  -1);
	classOid = FUNC1(relvar, NoLock, false);

	FUNC0(oldCxt);

	/* Build and return the row type struct */
	return FUNC8(FUNC2(classOid), -1, InvalidOid,
								  FUNC7(idents));
}