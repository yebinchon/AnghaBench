#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int numrefs; TYPE_2__* extras; int /*<<< orphan*/ * refs; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddresses ;
typedef  TYPE_2__ ObjectAddressExtra ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int DEPFLAG_NORMAL ; 
 int DEPFLAG_ORIGINAL ; 
 int DEPFLAG_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PERFORM_DELETION_INTERNAL ; 
 int PERFORM_DELETION_SKIP_ORIGINAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(ObjectAddresses *targetObjects, Relation *depRel,
					int flags)
{
	int			i;

	/*
	 * Keep track of objects for event triggers, if necessary.
	 */
	if (FUNC4() && !(flags & PERFORM_DELETION_INTERNAL))
	{
		for (i = 0; i < targetObjects->numrefs; i++)
		{
			const ObjectAddress *thisobj = &targetObjects->refs[i];
			const ObjectAddressExtra *extra = &targetObjects->extras[i];
			bool		original = false;
			bool		normal = false;

			if (extra->flags & DEPFLAG_ORIGINAL)
				original = true;
			if (extra->flags & DEPFLAG_NORMAL)
				normal = true;
			if (extra->flags & DEPFLAG_REVERSE)
				normal = true;

			if (FUNC1(FUNC3(thisobj)))
			{
				FUNC0(thisobj, original, normal);
			}
		}
	}

	/*
	 * Delete all the objects in the proper order, except that if told to, we
	 * should skip the original object(s).
	 */
	for (i = 0; i < targetObjects->numrefs; i++)
	{
		ObjectAddress *thisobj = targetObjects->refs + i;
		ObjectAddressExtra *thisextra = targetObjects->extras + i;

		if ((flags & PERFORM_DELETION_SKIP_ORIGINAL) &&
			(thisextra->flags & DEPFLAG_ORIGINAL))
			continue;

		FUNC2(thisobj, depRel, flags);
	}
}