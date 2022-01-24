#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int buffersOnLevelsLen; scalar_t__* buffersOnLevels; int /*<<< orphan*/  bufferEmptyingQueue; int /*<<< orphan*/  context; } ;
struct TYPE_10__ {TYPE_1__* giststate; TYPE_4__* gfbb; } ;
struct TYPE_9__ {scalar_t__ blocksCount; int queuedForEmptying; } ;
struct TYPE_8__ {int /*<<< orphan*/  tempCxt; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ GISTNodeBuffer ;
typedef  TYPE_3__ GISTBuildState ;
typedef  TYPE_4__ GISTBuildBuffers ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(GISTBuildState *buildstate)
{
	GISTBuildBuffers *gfbb = buildstate->gfbb;
	MemoryContext oldCtx;
	int			i;

	oldCtx = FUNC0(buildstate->giststate->tempCxt);

	/*
	 * Iterate through the levels from top to bottom.
	 */
	for (i = gfbb->buffersOnLevelsLen - 1; i >= 0; i--)
	{
		/*
		 * Empty all buffers on this level. Note that new buffers can pop up
		 * in the list during the processing, as a result of page splits, so a
		 * simple walk through the list won't work. We remove buffers from the
		 * list when we see them empty; a buffer can't become non-empty once
		 * it's been fully emptied.
		 */
		while (gfbb->buffersOnLevels[i] != NIL)
		{
			GISTNodeBuffer *nodeBuffer;

			nodeBuffer = (GISTNodeBuffer *) FUNC4(gfbb->buffersOnLevels[i]);

			if (nodeBuffer->blocksCount != 0)
			{
				/*
				 * Add this buffer to the emptying queue, and proceed to empty
				 * the queue.
				 */
				if (!nodeBuffer->queuedForEmptying)
				{
					FUNC0(gfbb->context);
					nodeBuffer->queuedForEmptying = true;
					gfbb->bufferEmptyingQueue =
						FUNC3(nodeBuffer, gfbb->bufferEmptyingQueue);
					FUNC0(buildstate->giststate->tempCxt);
				}
				FUNC2(buildstate);
			}
			else
				gfbb->buffersOnLevels[i] =
					FUNC5(gfbb->buffersOnLevels[i]);
		}
		FUNC1(DEBUG2, "emptied all buffers at level %d", i);
	}
	FUNC0(oldCtx);
}