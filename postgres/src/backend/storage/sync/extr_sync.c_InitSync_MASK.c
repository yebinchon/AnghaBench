#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
typedef  int /*<<< orphan*/  PendingFsyncEntry ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  FileTag ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC5 (char*,long,TYPE_1__*,int) ; 
 int /*<<< orphan*/  pendingOps ; 
 int /*<<< orphan*/  pendingOpsCxt ; 
 int /*<<< orphan*/  pendingUnlinks ; 

void
FUNC6(void)
{
	/*
	 * Create pending-operations hashtable if we need it.  Currently, we need
	 * it if we are standalone (not under a postmaster) or if we are a startup
	 * or checkpointer auxiliary process.
	 */
	if (!IsUnderPostmaster || FUNC2() || FUNC1())
	{
		HASHCTL		hash_ctl;

		/*
		 * XXX: The checkpointer needs to add entries to the pending ops table
		 * when absorbing fsync requests.  That is done within a critical
		 * section, which isn't usually allowed, but we make an exception. It
		 * means that there's a theoretical possibility that you run out of
		 * memory while absorbing fsync requests, which leads to a PANIC.
		 * Fortunately the hash table is small so that's unlikely to happen in
		 * practice.
		 */
		pendingOpsCxt = FUNC0(TopMemoryContext,
											  "Pending ops context",
											  ALLOCSET_DEFAULT_SIZES);
		FUNC4(pendingOpsCxt, true);

		FUNC3(&hash_ctl, 0, sizeof(hash_ctl));
		hash_ctl.keysize = sizeof(FileTag);
		hash_ctl.entrysize = sizeof(PendingFsyncEntry);
		hash_ctl.hcxt = pendingOpsCxt;
		pendingOps = FUNC5("Pending Ops Table",
								 100L,
								 &hash_ctl,
								 HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
		pendingUnlinks = NIL;
	}

}