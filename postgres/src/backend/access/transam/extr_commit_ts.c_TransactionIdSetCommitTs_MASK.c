#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_7__ {TYPE_1__* shared; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  time; } ;
struct TYPE_5__ {scalar_t__* page_buffer; } ;
typedef  int /*<<< orphan*/  RepOriginId ;
typedef  TYPE_2__ CommitTimestampEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* CommitTsCtl ; 
 int SizeOfCommitTimestampEntry ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC4(TransactionId xid, TimestampTz ts,
						 RepOriginId nodeid, int slotno)
{
	int			entryno = FUNC2(xid);
	CommitTimestampEntry entry;

	FUNC0(FUNC1(xid));

	entry.time = ts;
	entry.nodeid = nodeid;

	FUNC3(CommitTsCtl->shared->page_buffer[slotno] +
		   SizeOfCommitTimestampEntry * entryno,
		   &entry, SizeOfCommitTimestampEntry);
}