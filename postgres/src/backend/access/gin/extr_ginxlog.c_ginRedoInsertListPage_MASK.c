#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rightlink; int ntuples; } ;
typedef  TYPE_1__ ginxlogInsertListPage ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_10__ {scalar_t__ rightlink; int maxoff; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_LIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC14(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	ginxlogInsertListPage *data = (ginxlogInsertListPage *) FUNC12(record);
	Buffer		buffer;
	Page		page;
	OffsetNumber l,
				off = FirstOffsetNumber;
	int			i,
				tupsize;
	char	   *payload;
	IndexTuple	tuples;
	Size		totaltupsize;

	/* We always re-initialize the page. */
	buffer = FUNC10(record, 0);
	page = FUNC1(buffer);

	FUNC2(buffer, GIN_LIST);
	FUNC3(page)->rightlink = data->rightlink;
	if (data->rightlink == InvalidBlockNumber)
	{
		/* tail of sublist */
		FUNC4(page);
		FUNC3(page)->maxoff = 1;
	}
	else
	{
		FUNC3(page)->maxoff = 0;
	}

	payload = FUNC11(record, 0, &totaltupsize);

	tuples = (IndexTuple) payload;
	for (i = 0; i < data->ntuples; i++)
	{
		tupsize = FUNC5(tuples);

		l = FUNC7(page, (Item) tuples, tupsize, off, false, false);

		if (l == InvalidOffsetNumber)
			FUNC13(ERROR, "failed to add item to index page");

		tuples = (IndexTuple) (((char *) tuples) + tupsize);
		off++;
	}
	FUNC0((char *) tuples == payload + totaltupsize);

	FUNC8(page, lsn);
	FUNC6(buffer);

	FUNC9(buffer);
}