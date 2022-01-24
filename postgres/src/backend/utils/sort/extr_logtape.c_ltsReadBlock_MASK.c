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
struct TYPE_3__ {int /*<<< orphan*/  pfile; } ;
typedef  TYPE_1__ LogicalTapeSet ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,long) ; 

__attribute__((used)) static void
FUNC5(LogicalTapeSet *lts, long blocknum, void *buffer)
{
	if (FUNC1(lts->pfile, blocknum) != 0 ||
		FUNC0(lts->pfile, buffer, BLCKSZ) != BLCKSZ)
		FUNC2(ERROR,
				(FUNC3(),
				 FUNC4("could not read block %ld of temporary file: %m",
						blocknum)));
}