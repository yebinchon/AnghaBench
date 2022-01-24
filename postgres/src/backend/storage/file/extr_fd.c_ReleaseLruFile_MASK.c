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
struct TYPE_2__ {scalar_t__ lruMoreRecently; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ nfile ; 

__attribute__((used)) static bool
FUNC4(void)
{
	FUNC1(FUNC3(LOG, "ReleaseLruFile. Opened %d", nfile));

	if (nfile > 0)
	{
		/*
		 * There are opened files and so there should be at least one used vfd
		 * in the ring.
		 */
		FUNC0(VfdCache[0].lruMoreRecently != 0);
		FUNC2(VfdCache[0].lruMoreRecently);
		return true;			/* freed a file */
	}
	return false;				/* no files available to free */
}