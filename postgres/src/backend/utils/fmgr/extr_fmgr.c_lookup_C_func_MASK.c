#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ fn_xmin; int /*<<< orphan*/  fn_tid; } ;
struct TYPE_8__ {int /*<<< orphan*/  oid; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_data; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;
typedef  TYPE_3__ CFuncHashTabEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * CFuncHash ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static CFuncHashTabEntry *
FUNC4(HeapTuple procedureTuple)
{
	Oid			fn_oid = ((Form_pg_proc) FUNC0(procedureTuple))->oid;
	CFuncHashTabEntry *entry;

	if (CFuncHash == NULL)
		return NULL;			/* no table yet */
	entry = (CFuncHashTabEntry *)
		FUNC3(CFuncHash,
					&fn_oid,
					HASH_FIND,
					NULL);
	if (entry == NULL)
		return NULL;			/* no such entry */
	if (entry->fn_xmin == FUNC1(procedureTuple->t_data) &&
		FUNC2(&entry->fn_tid, &procedureTuple->t_self))
		return entry;			/* OK */
	return NULL;				/* entry is out of date */
}