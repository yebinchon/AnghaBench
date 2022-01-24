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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

Oid
FUNC12(Oid typeOid, Oid nspOid, ObjectAddresses *objsMoved)
{
	Oid			elemOid;

	/* check permissions on type */
	if (!FUNC11(typeOid, FUNC1()))
		FUNC3(ACLCHECK_NOT_OWNER, typeOid);

	/* don't allow direct alteration of array types */
	elemOid = FUNC10(typeOid);
	if (FUNC2(elemOid) && FUNC9(elemOid) == typeOid)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC7("cannot alter array type %s",
						FUNC8(typeOid)),
				 FUNC6("You can alter type %s, which will alter the array type as well.",
						 FUNC8(elemOid))));

	/* and do the work */
	return FUNC0(typeOid, nspOid, false, true, objsMoved);
}