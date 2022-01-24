#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ id; int /*<<< orphan*/  cc_reloid; int /*<<< orphan*/  cc_indexoid; int /*<<< orphan*/ * cc_tupdesc; } ;
struct TYPE_9__ {TYPE_1__* rd_index; } ;
struct TYPE_8__ {scalar_t__ indimmediate; scalar_t__ indisunique; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ CatCache ;

/* Variables and functions */
 scalar_t__ AMNAME ; 
 scalar_t__ AMOID ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(CatCache *cache, bool touch_index)
{
	if (cache->cc_tupdesc == NULL)
		FUNC1(cache);

	if (touch_index &&
		cache->id != AMOID &&
		cache->id != AMNAME)
	{
		Relation	idesc;

		/*
		 * We must lock the underlying catalog before opening the index to
		 * avoid deadlock, since index_open could possibly result in reading
		 * this same catalog, and if anyone else is exclusive-locking this
		 * catalog and index they'll be doing it in that order.
		 */
		FUNC2(cache->cc_reloid, AccessShareLock);
		idesc = FUNC5(cache->cc_indexoid, AccessShareLock);

		/*
		 * While we've got the index open, let's check that it's unique (and
		 * not just deferrable-unique, thank you very much).  This is just to
		 * catch thinkos in definitions of new catcaches, so we don't worry
		 * about the pg_am indexes not getting tested.
		 */
		FUNC0(idesc->rd_index->indisunique &&
			   idesc->rd_index->indimmediate);

		FUNC4(idesc, AccessShareLock);
		FUNC3(cache->cc_reloid, AccessShareLock);
	}
}