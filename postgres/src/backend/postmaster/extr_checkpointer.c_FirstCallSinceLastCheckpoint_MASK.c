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
struct TYPE_2__ {int ckpt_done; int /*<<< orphan*/  ckpt_lck; } ;

/* Variables and functions */
 TYPE_1__* CheckpointerShmem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool
FUNC2(void)
{
	static int	ckpt_done = 0;
	int			new_done;
	bool		FirstCall = false;

	FUNC0(&CheckpointerShmem->ckpt_lck);
	new_done = CheckpointerShmem->ckpt_done;
	FUNC1(&CheckpointerShmem->ckpt_lck);

	if (new_done != ckpt_done)
		FirstCall = true;

	ckpt_done = new_done;

	return FirstCall;
}