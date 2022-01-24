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
struct TYPE_7__ {int /*<<< orphan*/  prpubid; } ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_publication_rel ;
typedef  TYPE_3__ CatCList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUBLICATIONRELMAP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

List *
FUNC5(Oid relid)
{
	List	   *result = NIL;
	CatCList   *pubrellist;
	int			i;

	/* Find all publications associated with the relation. */
	pubrellist = FUNC3(PUBLICATIONRELMAP,
									 FUNC1(relid));
	for (i = 0; i < pubrellist->n_members; i++)
	{
		HeapTuple	tup = &pubrellist->members[i]->tuple;
		Oid			pubid = ((Form_pg_publication_rel) FUNC0(tup))->prpubid;

		result = FUNC4(result, pubid);
	}

	FUNC2(pubrellist);

	return result;
}