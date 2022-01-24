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
typedef  int int32 ;
struct TYPE_2__ {scalar_t__ collprovider; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_collation ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_collation_oid ; 
 int /*<<< orphan*/  COLLNAMEENCNSP ; 
 scalar_t__ COLLPROVIDER_ICU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static Oid
FUNC10(const char *collname, Oid collnamespace, int32 encoding)
{
	Oid			collid;
	HeapTuple	colltup;
	Form_pg_collation collform;

	/* Check for encoding-specific entry (exact match) */
	collid = FUNC1(COLLNAMEENCNSP, Anum_pg_collation_oid,
							 FUNC6(collname),
							 FUNC3(encoding),
							 FUNC4(collnamespace));
	if (FUNC5(collid))
		return collid;

	/*
	 * Check for any-encoding entry.  This takes a bit more work: while libc
	 * collations with collencoding = -1 do work with all encodings, ICU
	 * collations only work with certain encodings, so we have to check that
	 * aspect before deciding it's a match.
	 */
	colltup = FUNC8(COLLNAMEENCNSP,
							  FUNC6(collname),
							  FUNC3(-1),
							  FUNC4(collnamespace));
	if (!FUNC2(colltup))
		return InvalidOid;
	collform = (Form_pg_collation) FUNC0(colltup);
	if (collform->collprovider == COLLPROVIDER_ICU)
	{
		if (FUNC9(encoding))
			collid = collform->oid;
		else
			collid = InvalidOid;
	}
	else
	{
		collid = collform->oid;
	}
	FUNC7(colltup);
	return collid;
}