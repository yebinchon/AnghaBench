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
struct TYPE_2__ {int /*<<< orphan*/  collname; int /*<<< orphan*/  collnamespace; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_collation ;

/* Variables and functions */
 int /*<<< orphan*/  COLLOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC13(Oid collation, Oid actual_datatype)
{
	List	   *result;
	HeapTuple	ht_coll;
	Form_pg_collation coll_rec;
	char	   *nsp_name;
	char	   *coll_name;

	if (!FUNC4(collation))
		return NIL;				/* easy case */
	if (collation == FUNC9(actual_datatype))
		return NIL;				/* just let it default */

	ht_coll = FUNC6(COLLOID, FUNC3(collation));
	if (!FUNC1(ht_coll))
		FUNC7(ERROR, "cache lookup failed for collation %u", collation);
	coll_rec = (Form_pg_collation) FUNC0(ht_coll);

	/* For simplicity, we always schema-qualify the name */
	nsp_name = FUNC8(coll_rec->collnamespace);
	coll_name = FUNC12(FUNC2(coll_rec->collname));
	result = FUNC10(FUNC11(nsp_name), FUNC11(coll_name));

	FUNC5(ht_coll);
	return result;
}