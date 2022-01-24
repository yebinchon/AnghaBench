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
struct TYPE_3__ {void* relOid; void* dbOid; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ xl_standby_lock ;
typedef  void* Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  MyXactFlags ; 
 int /*<<< orphan*/  XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK ; 

void
FUNC2(Oid dbOid, Oid relOid)
{
	xl_standby_lock xlrec;

	xlrec.xid = FUNC0();

	xlrec.dbOid = dbOid;
	xlrec.relOid = relOid;

	FUNC1(1, &xlrec);
	MyXactFlags |= XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK;
}