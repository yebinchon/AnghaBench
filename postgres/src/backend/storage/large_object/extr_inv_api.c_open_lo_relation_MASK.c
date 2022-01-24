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
typedef  int /*<<< orphan*/  ResourceOwner ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  LargeObjectLOidPNIndexId ; 
 int /*<<< orphan*/  LargeObjectRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  TopTransactionResourceOwner ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lo_heap_r ; 
 int /*<<< orphan*/ * lo_index_r ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	ResourceOwner currentOwner;

	if (lo_heap_r && lo_index_r)
		return;					/* already open in current xact */

	/* Arrange for the top xact to own these relation references */
	currentOwner = CurrentResourceOwner;
	CurrentResourceOwner = TopTransactionResourceOwner;

	/* Use RowExclusiveLock since we might either read or write */
	if (lo_heap_r == NULL)
		lo_heap_r = FUNC1(LargeObjectRelationId, RowExclusiveLock);
	if (lo_index_r == NULL)
		lo_index_r = FUNC0(LargeObjectLOidPNIndexId, RowExclusiveLock);

	CurrentResourceOwner = currentOwner;
}