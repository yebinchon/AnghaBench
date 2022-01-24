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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {int /*<<< orphan*/  conproc; scalar_t__ condefault; } ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_conversion ;
typedef  TYPE_3__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  CONDEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC5(Oid name_space, int32 for_encoding, int32 to_encoding)
{
	CatCList   *catlist;
	HeapTuple	tuple;
	Form_pg_conversion body;
	Oid			proc = InvalidOid;
	int			i;

	catlist = FUNC4(CONDEFAULT,
								  FUNC2(name_space),
								  FUNC1(for_encoding),
								  FUNC1(to_encoding));

	for (i = 0; i < catlist->n_members; i++)
	{
		tuple = &catlist->members[i]->tuple;
		body = (Form_pg_conversion) FUNC0(tuple);
		if (body->condefault)
		{
			proc = body->conproc;
			break;
		}
	}
	FUNC3(catlist);
	return proc;
}