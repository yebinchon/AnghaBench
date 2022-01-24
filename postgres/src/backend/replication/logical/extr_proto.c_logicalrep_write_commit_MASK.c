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
typedef  char uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_3__ {int /*<<< orphan*/  commit_time; int /*<<< orphan*/  end_lsn; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ ReorderBufferTXN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(StringInfo out, ReorderBufferTXN *txn,
						XLogRecPtr commit_lsn)
{
	uint8		flags = 0;

	FUNC0(out, 'C');		/* sending COMMIT */

	/* send the flags field (unused for now) */
	FUNC0(out, flags);

	/* send fields */
	FUNC1(out, commit_lsn);
	FUNC1(out, txn->end_lsn);
	FUNC1(out, txn->commit_time);
}