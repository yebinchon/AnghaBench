#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogSegNo ;
struct TYPE_3__ {scalar_t__ first_lsn; scalar_t__ final_lsn; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ ReorderBufferTXN ;
typedef  int /*<<< orphan*/  ReorderBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static void
FUNC7(ReorderBuffer *rb, ReorderBufferTXN *txn)
{
	XLogSegNo	first;
	XLogSegNo	cur;
	XLogSegNo	last;

	FUNC0(txn->first_lsn != InvalidXLogRecPtr);
	FUNC0(txn->final_lsn != InvalidXLogRecPtr);

	FUNC2(txn->first_lsn, first, wal_segment_size);
	FUNC2(txn->final_lsn, last, wal_segment_size);

	/* iterate over all possible filenames, and delete them */
	for (cur = first; cur <= last; cur++)
	{
		char		path[MAXPGPATH];

		FUNC1(path, MyReplicationSlot, txn->xid, cur);
		if (FUNC6(path) != 0 && errno != ENOENT)
			FUNC3(ERROR,
					(FUNC4(),
					 FUNC5("could not remove file \"%s\": %m", path)));
	}
}