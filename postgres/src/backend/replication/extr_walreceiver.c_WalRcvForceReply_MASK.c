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
struct TYPE_2__ {int force_reply; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * latch; } ;
typedef  int /*<<< orphan*/  Latch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* WalRcv ; 

void
FUNC3(void)
{
	Latch	   *latch;

	WalRcv->force_reply = true;
	/* fetching the latch pointer might not be atomic, so use spinlock */
	FUNC1(&WalRcv->mutex);
	latch = WalRcv->latch;
	FUNC2(&WalRcv->mutex);
	if (latch)
		FUNC0(latch);
}