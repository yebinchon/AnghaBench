#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int loadedBuffersCount; int /*<<< orphan*/ * loadedBuffers; } ;
typedef  TYPE_1__ GISTBuildBuffers ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC1(GISTBuildBuffers *gfbb)
{
	int			i;

	/* Unload all the buffers that have a page loaded in memory. */
	for (i = 0; i < gfbb->loadedBuffersCount; i++)
		FUNC0(gfbb, gfbb->loadedBuffers[i]);

	/* Now there are no node buffers with loaded last page */
	gfbb->loadedBuffersCount = 0;
}