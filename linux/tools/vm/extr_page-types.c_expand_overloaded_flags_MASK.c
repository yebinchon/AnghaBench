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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  MMAP_EXCLUSIVE ; 
 int PM_FILE ; 
 int PM_MMAP_EXCLUSIVE ; 
 int PM_SOFT_DIRTY ; 
 int PM_SWAP ; 
 int /*<<< orphan*/  PRIVATE ; 
 int /*<<< orphan*/  READAHEAD ; 
 int /*<<< orphan*/  RECLAIM ; 
 int /*<<< orphan*/  SLAB ; 
 int /*<<< orphan*/  SLOB_FREE ; 
 int /*<<< orphan*/  SLUB_DEBUG ; 
 int /*<<< orphan*/  SLUB_FROZEN ; 
 int /*<<< orphan*/  SOFTDIRTY ; 
 int /*<<< orphan*/  SWAP ; 
 int /*<<< orphan*/  WRITEBACK ; 

__attribute__((used)) static uint64_t FUNC1(uint64_t flags, uint64_t pme)
{
	/* SLOB/SLUB overload several page flags */
	if (flags & FUNC0(SLAB)) {
		if (flags & FUNC0(PRIVATE))
			flags ^= FUNC0(PRIVATE) | FUNC0(SLOB_FREE);
		if (flags & FUNC0(ACTIVE))
			flags ^= FUNC0(ACTIVE) | FUNC0(SLUB_FROZEN);
		if (flags & FUNC0(ERROR))
			flags ^= FUNC0(ERROR) | FUNC0(SLUB_DEBUG);
	}

	/* PG_reclaim is overloaded as PG_readahead in the read path */
	if ((flags & (FUNC0(RECLAIM) | FUNC0(WRITEBACK))) == FUNC0(RECLAIM))
		flags ^= FUNC0(RECLAIM) | FUNC0(READAHEAD);

	if (pme & PM_SOFT_DIRTY)
		flags |= FUNC0(SOFTDIRTY);
	if (pme & PM_FILE)
		flags |= FUNC0(FILE);
	if (pme & PM_SWAP)
		flags |= FUNC0(SWAP);
	if (pme & PM_MMAP_EXCLUSIVE)
		flags |= FUNC0(MMAP_EXCLUSIVE);

	return flags;
}