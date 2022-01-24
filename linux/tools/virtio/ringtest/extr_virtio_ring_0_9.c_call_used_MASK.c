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
struct TYPE_2__ {int /*<<< orphan*/  used_idx; int /*<<< orphan*/  called_used_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ host ; 
 int /*<<< orphan*/  ring ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	bool need;

	/* Flush in previous flags write */
	/* Barrier D (for pairing) */
	FUNC1();
	need = FUNC2(FUNC3(&ring),
				host.used_idx,
				host.called_used_idx);

	host.called_used_idx = host.used_idx;
	if (need)
		FUNC0();
}