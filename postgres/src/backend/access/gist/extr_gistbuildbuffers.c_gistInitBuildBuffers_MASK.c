#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hashCtl ;
struct TYPE_8__ {int pagesPerBuffer; int levelStep; int freeBlocksLen; long* freeBlocks; int buffersOnLevelsLen; int loadedBuffersLen; int rootlevel; scalar_t__ loadedBuffersCount; int /*<<< orphan*/ ** loadedBuffers; int /*<<< orphan*/ ** buffersOnLevels; void* bufferEmptyingQueue; int /*<<< orphan*/  nodeBuffersTab; void* context; scalar_t__ nFreeBlocks; scalar_t__ nFileBlocks; int /*<<< orphan*/  pfile; } ;
struct TYPE_7__ {int keysize; int entrysize; void* hcxt; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  GISTNodeBuffer ;
typedef  TYPE_2__ GISTBuildBuffers ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CurrentMemoryContext ; 
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 void* NIL ; 
 int /*<<< orphan*/  FUNC1 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int) ; 

GISTBuildBuffers *
FUNC4(int pagesPerBuffer, int levelStep, int maxLevel)
{
	GISTBuildBuffers *gfbb;
	HASHCTL		hashCtl;

	gfbb = FUNC3(sizeof(GISTBuildBuffers));
	gfbb->pagesPerBuffer = pagesPerBuffer;
	gfbb->levelStep = levelStep;

	/*
	 * Create a temporary file to hold buffer pages that are swapped out of
	 * memory.
	 */
	gfbb->pfile = FUNC0(false);
	gfbb->nFileBlocks = 0;

	/* Initialize free page management. */
	gfbb->nFreeBlocks = 0;
	gfbb->freeBlocksLen = 32;
	gfbb->freeBlocks = (long *) FUNC3(gfbb->freeBlocksLen * sizeof(long));

	/*
	 * Current memory context will be used for all in-memory data structures
	 * of buffers which are persistent during buffering build.
	 */
	gfbb->context = CurrentMemoryContext;

	/*
	 * nodeBuffersTab hash is association between index blocks and it's
	 * buffers.
	 */
	FUNC2(&hashCtl, 0, sizeof(hashCtl));
	hashCtl.keysize = sizeof(BlockNumber);
	hashCtl.entrysize = sizeof(GISTNodeBuffer);
	hashCtl.hcxt = CurrentMemoryContext;
	gfbb->nodeBuffersTab = FUNC1("gistbuildbuffers",
									   1024,
									   &hashCtl,
									   HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

	gfbb->bufferEmptyingQueue = NIL;

	/*
	 * Per-level node buffers lists for final buffers emptying process. Node
	 * buffers are inserted here when they are created.
	 */
	gfbb->buffersOnLevelsLen = 1;
	gfbb->buffersOnLevels = (List **) FUNC3(sizeof(List *) *
											 gfbb->buffersOnLevelsLen);
	gfbb->buffersOnLevels[0] = NIL;

	/*
	 * Block numbers of node buffers which last pages are currently loaded
	 * into main memory.
	 */
	gfbb->loadedBuffersLen = 32;
	gfbb->loadedBuffers = (GISTNodeBuffer **) FUNC3(gfbb->loadedBuffersLen *
													 sizeof(GISTNodeBuffer *));
	gfbb->loadedBuffersCount = 0;

	gfbb->rootlevel = maxLevel;

	return gfbb;
}