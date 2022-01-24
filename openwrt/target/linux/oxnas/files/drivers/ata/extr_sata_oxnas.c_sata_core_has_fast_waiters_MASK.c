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
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct sata_oxnas_host_priv {int /*<<< orphan*/  core_lock; TYPE_1__ fast_wait_queue; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct ata_host *ah)
{
	int has_waiters;
	unsigned long flags;
	struct sata_oxnas_host_priv *hd = ah->private_data;

	FUNC1(&hd->core_lock, flags);
	has_waiters = !FUNC0(&hd->fast_wait_queue.head);
	FUNC2(&hd->core_lock, flags);

	return has_waiters;
}