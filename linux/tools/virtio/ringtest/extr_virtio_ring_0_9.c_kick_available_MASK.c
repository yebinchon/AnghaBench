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
struct TYPE_2__ {int /*<<< orphan*/  avail_idx; int /*<<< orphan*/  kicked_avail_idx; } ;

/* Variables and functions */
 TYPE_1__ guest ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ring ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	bool need;

	/* Flush in previous flags write */
	/* Barrier C (for pairing) */
	FUNC1();
	need = FUNC3(FUNC2(&ring),
				guest.avail_idx,
				guest.kicked_avail_idx);

	guest.kicked_avail_idx = guest.avail_idx;
	if (need)
		FUNC0();
}