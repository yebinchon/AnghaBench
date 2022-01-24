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
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  GISTSearchItem ;
typedef  TYPE_1__* GISTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GISTSearchItem *
FUNC2(GISTScanOpaque so)
{
	GISTSearchItem *item;

	if (!FUNC0(so->queue))
	{
		item = (GISTSearchItem *) FUNC1(so->queue);
	}
	else
	{
		/* Done when both heaps are empty */
		item = NULL;
	}

	/* Return item; caller is responsible to pfree it */
	return item;
}