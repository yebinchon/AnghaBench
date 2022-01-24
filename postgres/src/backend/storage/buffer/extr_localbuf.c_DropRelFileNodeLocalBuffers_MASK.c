#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_5__ {scalar_t__ forkNum; scalar_t__ blockNum; int /*<<< orphan*/  rnode; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; TYPE_3__ tag; } ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  LocalBufferLookupEnt ;
typedef  scalar_t__ ForkNumber ;
typedef  TYPE_1__ BufferDesc ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int BM_TAG_VALID ; 
 int BUF_FLAG_MASK ; 
 int BUF_USAGECOUNT_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  HASH_REMOVE ; 
 int /*<<< orphan*/  LocalBufHash ; 
 scalar_t__* LocalRefCount ; 
 int /*<<< orphan*/  MyBackendId ; 
 int NLocBuffer ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC8(RelFileNode rnode, ForkNumber forkNum,
							BlockNumber firstDelBlock)
{
	int			i;

	for (i = 0; i < NLocBuffer; i++)
	{
		BufferDesc *bufHdr = FUNC1(i);
		LocalBufferLookupEnt *hresult;
		uint32		buf_state;

		buf_state = FUNC5(&bufHdr->state);

		if ((buf_state & BM_TAG_VALID) &&
			FUNC2(bufHdr->tag.rnode, rnode) &&
			bufHdr->tag.forkNum == forkNum &&
			bufHdr->tag.blockNum >= firstDelBlock)
		{
			if (LocalRefCount[i] != 0)
				FUNC3(ERROR, "block %u of %s is still referenced (local %u)",
					 bufHdr->tag.blockNum,
					 FUNC7(bufHdr->tag.rnode, MyBackendId,
									bufHdr->tag.forkNum),
					 LocalRefCount[i]);
			/* Remove entry from hashtable */
			hresult = (LocalBufferLookupEnt *)
				FUNC4(LocalBufHash, (void *) &bufHdr->tag,
							HASH_REMOVE, NULL);
			if (!hresult)		/* shouldn't happen */
				FUNC3(ERROR, "local buffer hash table corrupted");
			/* Mark buffer invalid */
			FUNC0(bufHdr->tag);
			buf_state &= ~BUF_FLAG_MASK;
			buf_state &= ~BUF_USAGECOUNT_MASK;
			FUNC6(&bufHdr->state, buf_state);
		}
	}
}