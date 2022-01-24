#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;
typedef  int /*<<< orphan*/  ReorderBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(ReorderBuffer *rb, uint32 ninvalidations,
								   SharedInvalidationMessage *invalidations)
{
	bool		use_subtxn = FUNC2();
	int			i;

	if (use_subtxn)
		FUNC1("replay");

	/*
	 * Force invalidations to happen outside of a valid transaction - that way
	 * entries will just be marked as invalid without accessing the catalog.
	 * That's advantageous because we don't need to setup the full state
	 * necessary for catalog access.
	 */
	if (use_subtxn)
		FUNC0();

	for (i = 0; i < ninvalidations; i++)
		FUNC3(&invalidations[i]);

	if (use_subtxn)
		FUNC4();
}