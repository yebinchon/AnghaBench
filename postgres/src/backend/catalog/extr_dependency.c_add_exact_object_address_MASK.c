#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numrefs; int maxrefs; int /*<<< orphan*/ * refs; int /*<<< orphan*/  extras; } ;
typedef  TYPE_1__ ObjectAddresses ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(const ObjectAddress *object,
						 ObjectAddresses *addrs)
{
	ObjectAddress *item;

	/* enlarge array if needed */
	if (addrs->numrefs >= addrs->maxrefs)
	{
		addrs->maxrefs *= 2;
		addrs->refs = (ObjectAddress *)
			FUNC1(addrs->refs, addrs->maxrefs * sizeof(ObjectAddress));
		FUNC0(!addrs->extras);
	}
	/* record this item */
	item = addrs->refs + addrs->numrefs;
	*item = *object;
	addrs->numrefs++;
}