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
struct TYPE_2__ {void* ckpt_sync_end_t; void* ckpt_sync_t; void* ckpt_write_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ CheckpointStats ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(int flags)
{
	FUNC4(flags);
	CheckpointStats.ckpt_write_t = FUNC1();
	FUNC0(flags);
	CheckpointStats.ckpt_sync_t = FUNC1();
	FUNC5();
	FUNC2();
	CheckpointStats.ckpt_sync_end_t = FUNC1();
	FUNC3();
}