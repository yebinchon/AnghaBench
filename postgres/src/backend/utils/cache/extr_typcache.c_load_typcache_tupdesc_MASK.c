#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type_id; scalar_t__ tupDesc_identifier; TYPE_7__* tupDesc; int /*<<< orphan*/  typrelid; } ;
typedef  TYPE_2__ TypeCacheEntry ;
struct TYPE_12__ {scalar_t__ tdrefcount; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ reltype; } ;
typedef  TYPE_3__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ tupledesc_id_counter ; 

__attribute__((used)) static void
FUNC6(TypeCacheEntry *typentry)
{
	Relation	rel;

	if (!FUNC1(typentry->typrelid))	/* should not happen */
		FUNC3(ERROR, "invalid typrelid for composite type %u",
			 typentry->type_id);
	rel = FUNC5(typentry->typrelid, AccessShareLock);
	FUNC0(rel->rd_rel->reltype == typentry->type_id);

	/*
	 * Link to the tupdesc and increment its refcount (we assert it's a
	 * refcounted descriptor).  We don't use IncrTupleDescRefCount() for this,
	 * because the reference mustn't be entered in the current resource owner;
	 * it can outlive the current query.
	 */
	typentry->tupDesc = FUNC2(rel);

	FUNC0(typentry->tupDesc->tdrefcount > 0);
	typentry->tupDesc->tdrefcount++;

	/*
	 * In future, we could take some pains to not change tupDesc_identifier if
	 * the tupdesc didn't really change; but for now it's not worth it.
	 */
	typentry->tupDesc_identifier = ++tupledesc_id_counter;

	FUNC4(rel, AccessShareLock);
}