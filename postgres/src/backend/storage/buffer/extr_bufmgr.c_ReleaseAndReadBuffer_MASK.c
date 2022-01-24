#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ blockNum; scalar_t__ forkNum; int /*<<< orphan*/  rnode; } ;
struct TYPE_11__ {TYPE_1__ tag; } ;
struct TYPE_10__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_2__* Relation ;
typedef  scalar_t__ ForkNumber ;
typedef  TYPE_3__ BufferDesc ;
typedef  int Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 TYPE_3__* FUNC4 (int) ; 
 TYPE_3__* FUNC5 (int) ; 
 int /*<<< orphan*/ * LocalRefCount ; 
 scalar_t__ MAIN_FORKNUM ; 
 int FUNC6 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 

Buffer
FUNC10(Buffer buffer,
					 Relation relation,
					 BlockNumber blockNum)
{
	ForkNumber	forkNum = MAIN_FORKNUM;
	BufferDesc *bufHdr;

	if (FUNC3(buffer))
	{
		FUNC0(FUNC2(buffer));
		if (FUNC1(buffer))
		{
			bufHdr = FUNC5(-buffer - 1);
			if (bufHdr->tag.blockNum == blockNum &&
				FUNC7(bufHdr->tag.rnode, relation->rd_node) &&
				bufHdr->tag.forkNum == forkNum)
				return buffer;
			FUNC8(CurrentResourceOwner, buffer);
			LocalRefCount[-buffer - 1]--;
		}
		else
		{
			bufHdr = FUNC4(buffer - 1);
			/* we have pin, so it's ok to examine tag without spinlock */
			if (bufHdr->tag.blockNum == blockNum &&
				FUNC7(bufHdr->tag.rnode, relation->rd_node) &&
				bufHdr->tag.forkNum == forkNum)
				return buffer;
			FUNC9(bufHdr, true);
		}
	}

	return FUNC6(relation, blockNum);
}