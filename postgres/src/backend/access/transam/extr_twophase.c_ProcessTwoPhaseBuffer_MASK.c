#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_3__ {int gidlen; int nsubxacts; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ TwoPhaseFileHeader ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {int /*<<< orphan*/  nextFullXid; } ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* ShmemVariableCache ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC18(TransactionId xid,
					  XLogRecPtr prepare_start_lsn,
					  bool fromdisk,
					  bool setParent, bool setNextXid)
{
	FullTransactionId nextFullXid = ShmemVariableCache->nextFullXid;
	TransactionId origNextXid = FUNC13(nextFullXid);
	TransactionId *subxids;
	char	   *buf;
	TwoPhaseFileHeader *hdr;
	int			i;

	FUNC1(FUNC2(TwoPhaseStateLock, LW_EXCLUSIVE));

	if (!fromdisk)
		FUNC1(prepare_start_lsn != InvalidXLogRecPtr);

	/* Already processed? */
	if (FUNC9(xid) || FUNC8(xid))
	{
		if (fromdisk)
		{
			FUNC15(WARNING,
					(FUNC17("removing stale two-phase state file for transaction %u",
							xid)));
			FUNC6(xid, true);
		}
		else
		{
			FUNC15(WARNING,
					(FUNC17("removing stale two-phase state from memory for transaction %u",
							xid)));
			FUNC4(xid, true);
		}
		return NULL;
	}

	/* Reject XID if too new */
	if (FUNC12(xid, origNextXid))
	{
		if (fromdisk)
		{
			FUNC15(WARNING,
					(FUNC17("removing future two-phase state file for transaction %u",
							xid)));
			FUNC6(xid, true);
		}
		else
		{
			FUNC15(WARNING,
					(FUNC17("removing future two-phase state from memory for transaction %u",
							xid)));
			FUNC4(xid, true);
		}
		return NULL;
	}

	if (fromdisk)
	{
		/* Read and validate file */
		buf = FUNC5(xid, false);
	}
	else
	{
		/* Read xlog data */
		FUNC14(prepare_start_lsn, &buf, NULL);
	}

	/* Deconstruct header */
	hdr = (TwoPhaseFileHeader *) buf;
	if (!FUNC10(hdr->xid, xid))
	{
		if (fromdisk)
			FUNC15(ERROR,
					(FUNC16(ERRCODE_DATA_CORRUPTED),
					 FUNC17("corrupted two-phase state file for transaction %u",
							xid)));
		else
			FUNC15(ERROR,
					(FUNC16(ERRCODE_DATA_CORRUPTED),
					 FUNC17("corrupted two-phase state in memory for transaction %u",
							xid)));
	}

	/*
	 * Examine subtransaction XIDs ... they should all follow main XID, and
	 * they may force us to advance nextFullXid.
	 */
	subxids = (TransactionId *) (buf +
								 FUNC3(sizeof(TwoPhaseFileHeader)) +
								 FUNC3(hdr->gidlen));
	for (i = 0; i < hdr->nsubxacts; i++)
	{
		TransactionId subxid = subxids[i];

		FUNC1(FUNC11(subxid, xid));

		/* update nextFullXid if needed */
		if (setNextXid)
			FUNC0(subxid);

		if (setParent)
			FUNC7(subxid, xid);
	}

	return buf;
}