#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ XLogSegNo ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_11__ {scalar_t__ ws_segno; scalar_t__ ws_off; } ;
struct TYPE_10__ {int /*<<< orphan*/  ws_segsize; } ;
struct TYPE_12__ {int readLen; int (* read_page ) (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ;char* readBuf; TYPE_2__ seg; int /*<<< orphan*/  currRecPtr; TYPE_1__ segcxt; } ;
typedef  TYPE_3__ XLogReaderState ;
typedef  scalar_t__ XLogPageHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int SizeOfXLogShortPHD ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ XLOG_BLCKSZ ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (TYPE_3__*,scalar_t__,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(XLogReaderState *state, XLogRecPtr pageptr, int reqLen)
{
	int			readLen;
	uint32		targetPageOff;
	XLogSegNo	targetSegNo;
	XLogPageHeader hdr;

	FUNC0((pageptr % XLOG_BLCKSZ) == 0);

	FUNC2(pageptr, targetSegNo, state->segcxt.ws_segsize);
	targetPageOff = FUNC6(pageptr, state->segcxt.ws_segsize);

	/* check whether we have all the requested data already */
	if (targetSegNo == state->seg.ws_segno &&
		targetPageOff == state->seg.ws_off && reqLen <= state->readLen)
		return state->readLen;

	/*
	 * Data is not in our buffer.
	 *
	 * Every time we actually read the page, even if we looked at parts of it
	 * before, we need to do verification as the read_page callback might now
	 * be rereading data from a different source.
	 *
	 * Whenever switching to a new WAL segment, we read the first page of the
	 * file and validate its header, even if that's not where the target
	 * record is.  This is so that we can check the additional identification
	 * info that is present in the first page's "long" header.
	 */
	if (targetSegNo != state->seg.ws_segno && targetPageOff != 0)
	{
		XLogRecPtr	targetSegmentPtr = pageptr - targetPageOff;

		readLen = state->read_page(state, targetSegmentPtr, XLOG_BLCKSZ,
								   state->currRecPtr,
								   state->readBuf);
		if (readLen < 0)
			goto err;

		/* we can be sure to have enough WAL available, we scrolled back */
		FUNC0(readLen == XLOG_BLCKSZ);

		if (!FUNC5(state, targetSegmentPtr,
										  state->readBuf))
			goto err;
	}

	/*
	 * First, read the requested data length, but at least a short page header
	 * so that we can validate it.
	 */
	readLen = state->read_page(state, pageptr, FUNC1(reqLen, SizeOfXLogShortPHD),
							   state->currRecPtr,
							   state->readBuf);
	if (readLen < 0)
		goto err;

	FUNC0(readLen <= XLOG_BLCKSZ);

	/* Do we have enough data to check the header length? */
	if (readLen <= SizeOfXLogShortPHD)
		goto err;

	FUNC0(readLen >= reqLen);

	hdr = (XLogPageHeader) state->readBuf;

	/* still not enough */
	if (readLen < FUNC3(hdr))
	{
		readLen = state->read_page(state, pageptr, FUNC3(hdr),
								   state->currRecPtr,
								   state->readBuf);
		if (readLen < 0)
			goto err;
	}

	/*
	 * Now that we know we have the full header, validate it.
	 */
	if (!FUNC5(state, pageptr, (char *) hdr))
		goto err;

	/* update read state information */
	state->seg.ws_segno = targetSegNo;
	state->seg.ws_off = targetPageOff;
	state->readLen = readLen;

	return readLen;

err:
	FUNC4(state);
	return -1;
}