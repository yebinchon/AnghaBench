#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ syncrep_method; } ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ SYNC_REP_PRIORITY ; 
 TYPE_1__* SyncRepConfig ; 
 int /*<<< orphan*/ * FUNC2 (int*) ; 
 int /*<<< orphan*/ * FUNC3 (int*) ; 
 int /*<<< orphan*/  SyncRepLock ; 

List *
FUNC4(bool *am_sync)
{
	FUNC0(FUNC1(SyncRepLock));

	/* Set default result */
	if (am_sync != NULL)
		*am_sync = false;

	/* Quick exit if sync replication is not requested */
	if (SyncRepConfig == NULL)
		return NIL;

	return (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY) ?
		FUNC2(am_sync) :
		FUNC3(am_sync);
}