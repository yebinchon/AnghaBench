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
struct TYPE_3__ {int maxrefs; int numrefs; int /*<<< orphan*/ * extras; int /*<<< orphan*/ * refs; } ;
typedef  TYPE_1__ ObjectAddresses ;
typedef  int /*<<< orphan*/  ObjectAddressExtra ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(const ObjectAddress *object,
							   const ObjectAddressExtra *extra,
							   ObjectAddresses *addrs)
{
	ObjectAddress *item;
	ObjectAddressExtra *itemextra;

	/* allocate extra space if first time */
	if (!addrs->extras)
		addrs->extras = (ObjectAddressExtra *)
			FUNC0(addrs->maxrefs * sizeof(ObjectAddressExtra));

	/* enlarge array if needed */
	if (addrs->numrefs >= addrs->maxrefs)
	{
		addrs->maxrefs *= 2;
		addrs->refs = (ObjectAddress *)
			FUNC1(addrs->refs, addrs->maxrefs * sizeof(ObjectAddress));
		addrs->extras = (ObjectAddressExtra *)
			FUNC1(addrs->extras, addrs->maxrefs * sizeof(ObjectAddressExtra));
	}
	/* record this item */
	item = addrs->refs + addrs->numrefs;
	*item = *object;
	itemextra = addrs->extras + addrs->numrefs;
	*itemextra = *extra;
	addrs->numrefs++;
}