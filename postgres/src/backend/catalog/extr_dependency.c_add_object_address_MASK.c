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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_5__ {int numrefs; int maxrefs; TYPE_2__* refs; int /*<<< orphan*/  extras; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  size_t ObjectClass ;
typedef  TYPE_1__ ObjectAddresses ;
typedef  TYPE_2__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LAST_OCLASS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * object_classes ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC4(ObjectClass oclass, Oid objectId, int32 subId,
				   ObjectAddresses *addrs)
{
	ObjectAddress *item;

	/*
	 * Make sure object_classes is kept up to date with the ObjectClass enum.
	 */
	FUNC1(FUNC2(object_classes) == LAST_OCLASS + 1,
					 "object_classes[] must cover all ObjectClasses");

	/* enlarge array if needed */
	if (addrs->numrefs >= addrs->maxrefs)
	{
		addrs->maxrefs *= 2;
		addrs->refs = (ObjectAddress *)
			FUNC3(addrs->refs, addrs->maxrefs * sizeof(ObjectAddress));
		FUNC0(!addrs->extras);
	}
	/* record this item */
	item = addrs->refs + addrs->numrefs;
	item->classId = object_classes[oclass];
	item->objectId = objectId;
	item->objectSubId = subId;
	addrs->numrefs++;
}