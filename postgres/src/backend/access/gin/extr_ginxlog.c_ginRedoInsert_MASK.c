#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ ginxlogInsert ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BlockIdData ;
typedef  int /*<<< orphan*/  BlockId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int GIN_INSERT_ISDATA ; 
 int GIN_INSERT_ISLEAF ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC14(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	ginxlogInsert *data = (ginxlogInsert *) FUNC10(record);
	Buffer		buffer;
#ifdef NOT_USED
	BlockNumber leftChildBlkno = InvalidBlockNumber;
#endif
	BlockNumber rightChildBlkno = InvalidBlockNumber;
	bool		isLeaf = (data->flags & GIN_INSERT_ISLEAF) != 0;

	/*
	 * First clear incomplete-split flag on child page if this finishes a
	 * split.
	 */
	if (!isLeaf)
	{
		char	   *payload = FUNC10(record) + sizeof(ginxlogInsert);

#ifdef NOT_USED
		leftChildBlkno = BlockIdGetBlockNumber((BlockId) payload);
#endif
		payload += sizeof(BlockIdData);
		rightChildBlkno = FUNC1((BlockId) payload);
		payload += sizeof(BlockIdData);

		FUNC11(record, 1);
	}

	if (FUNC8(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		Page		page = FUNC2(buffer);
		Size		len;
		char	   *payload = FUNC9(record, 0, &len);

		/* How to insert the payload is tree-type specific */
		if (data->flags & GIN_INSERT_ISDATA)
		{
			FUNC0(FUNC4(page));
			FUNC12(buffer, isLeaf, rightChildBlkno, payload);
		}
		else
		{
			FUNC0(!FUNC4(page));
			FUNC13(buffer, isLeaf, rightChildBlkno, payload);
		}

		FUNC6(page, lsn);
		FUNC5(buffer);
	}
	if (FUNC3(buffer))
		FUNC7(buffer);
}