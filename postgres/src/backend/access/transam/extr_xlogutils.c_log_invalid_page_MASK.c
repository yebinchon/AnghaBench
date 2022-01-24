#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  blkno; int /*<<< orphan*/  forkno; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ xl_invalid_page_key ;
struct TYPE_7__ {int present; } ;
typedef  TYPE_2__ xl_invalid_page ;
typedef  int /*<<< orphan*/  ctl ;
struct TYPE_8__ {int keysize; int entrysize; } ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  TYPE_3__ HASHCTL ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ DEBUG1 ; 
 int HASH_BLOBS ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ WARNING ; 
 scalar_t__ client_min_messages ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,TYPE_3__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * invalid_page_tab ; 
 scalar_t__ log_min_messages ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ reachedConsistency ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(RelFileNode node, ForkNumber forkno, BlockNumber blkno,
				 bool present)
{
	xl_invalid_page_key key;
	xl_invalid_page *hentry;
	bool		found;

	/*
	 * Once recovery has reached a consistent state, the invalid-page table
	 * should be empty and remain so. If a reference to an invalid page is
	 * found after consistency is reached, PANIC immediately. This might seem
	 * aggressive, but it's better than letting the invalid reference linger
	 * in the hash table until the end of recovery and PANIC there, which
	 * might come only much later if this is a standby server.
	 */
	if (reachedConsistency)
	{
		FUNC4(WARNING, node, forkno, blkno, present);
		FUNC0(PANIC, "WAL contains references to invalid pages");
	}

	/*
	 * Log references to invalid pages at DEBUG1 level.  This allows some
	 * tracing of the cause (note the elog context mechanism will tell us
	 * something about the XLOG record that generated the reference).
	 */
	if (log_min_messages <= DEBUG1 || client_min_messages <= DEBUG1)
		FUNC4(DEBUG1, node, forkno, blkno, present);

	if (invalid_page_tab == NULL)
	{
		/* create hash table when first needed */
		HASHCTL		ctl;

		FUNC3(&ctl, 0, sizeof(ctl));
		ctl.keysize = sizeof(xl_invalid_page_key);
		ctl.entrysize = sizeof(xl_invalid_page);

		invalid_page_tab = FUNC1("XLOG invalid-page table",
									   100,
									   &ctl,
									   HASH_ELEM | HASH_BLOBS);
	}

	/* we currently assume xl_invalid_page_key contains no padding */
	key.node = node;
	key.forkno = forkno;
	key.blkno = blkno;
	hentry = (xl_invalid_page *)
		FUNC2(invalid_page_tab, (void *) &key, HASH_ENTER, &found);

	if (!found)
	{
		/* hash_search already filled in the key */
		hentry->present = present;
	}
	else
	{
		/* repeat reference ... leave "present" as it was */
	}
}