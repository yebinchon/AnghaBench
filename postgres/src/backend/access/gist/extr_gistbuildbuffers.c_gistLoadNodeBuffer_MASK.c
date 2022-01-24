#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pfile; } ;
struct TYPE_9__ {scalar_t__ blocksCount; int /*<<< orphan*/  pageBlocknum; scalar_t__ pageBuffer; } ;
typedef  TYPE_1__ GISTNodeBuffer ;
typedef  TYPE_2__ GISTBuildBuffers ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(GISTBuildBuffers *gfbb, GISTNodeBuffer *nodeBuffer)
{
	/* Check if we really should load something */
	if (!nodeBuffer->pageBuffer && nodeBuffer->blocksCount > 0)
	{
		/* Allocate memory for page */
		nodeBuffer->pageBuffer = FUNC2(gfbb);

		/* Read block from temporary file */
		FUNC0(gfbb->pfile, nodeBuffer->pageBlocknum,
						  nodeBuffer->pageBuffer);

		/* Mark file block as free */
		FUNC3(gfbb, nodeBuffer->pageBlocknum);

		/* Mark node buffer as loaded */
		FUNC1(gfbb, nodeBuffer);
		nodeBuffer->pageBlocknum = InvalidBlockNumber;
	}
}