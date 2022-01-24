#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_12__ {scalar_t__ dbNode; } ;
struct TYPE_11__ {TYPE_2__ rnode; } ;
struct TYPE_13__ {TYPE_1__ tag; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ BufferDesc ;

/* Variables and functions */
 int BM_DIRTY ; 
 int BM_VALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int FUNC5 (TYPE_3__*) ; 
 int NBuffers ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 

void
FUNC11(Oid dbid)
{
	int			i;
	BufferDesc *bufHdr;

	/* Make sure we can handle the pin inside the loop */
	FUNC8(CurrentResourceOwner);

	for (i = 0; i < NBuffers; i++)
	{
		uint32		buf_state;

		bufHdr = FUNC2(i);

		/*
		 * As in DropRelFileNodeBuffers, an unlocked precheck should be safe
		 * and saves some cycles.
		 */
		if (bufHdr->tag.rnode.dbNode != dbid)
			continue;

		FUNC7();

		buf_state = FUNC5(bufHdr);
		if (bufHdr->tag.rnode.dbNode == dbid &&
			(buf_state & (BM_VALID | BM_DIRTY)) == (BM_VALID | BM_DIRTY))
		{
			FUNC6(bufHdr);
			FUNC3(FUNC0(bufHdr), LW_SHARED);
			FUNC1(bufHdr, NULL);
			FUNC4(FUNC0(bufHdr));
			FUNC10(bufHdr, true);
		}
		else
			FUNC9(bufHdr, buf_state);
	}
}