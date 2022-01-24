#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_5__ {scalar_t__ attnum_namespace; int oid_catcache_id; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectPropertyType ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

Oid
FUNC9(const ObjectAddress *address)
{
	int			cache;
	HeapTuple	tuple;
	bool		isnull;
	Oid			oid;
	const ObjectPropertyType *property;

	/* If not owned by a namespace, just return InvalidOid. */
	property = FUNC8(address->classId);
	if (property->attnum_namespace == InvalidAttrNumber)
		return InvalidOid;

	/* Currently, we can only handle object types with system caches. */
	cache = property->oid_catcache_id;
	FUNC0(cache != -1);

	/* Fetch tuple from syscache and extract namespace attribute. */
	tuple = FUNC5(cache, FUNC3(address->objectId));
	if (!FUNC2(tuple))
		FUNC7(ERROR, "cache lookup failed for cache %d oid %u",
			 cache, address->objectId);
	oid = FUNC1(FUNC6(cache,
										   tuple,
										   property->attnum_namespace,
										   &isnull));
	FUNC0(!isnull);
	FUNC4(tuple);

	return oid;
}