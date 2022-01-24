#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_8__ {scalar_t__ topXid; } ;
struct TYPE_7__ {TYPE_4__* myXact; } ;
struct TYPE_6__ {void* xid; } ;
typedef  TYPE_1__ SERIALIZABLEXIDTAG ;
typedef  TYPE_2__ SERIALIZABLEXID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 TYPE_4__* InvalidSerializableXact ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__* MySerializableXact ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  SerializableXidHash ; 
 int FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

void
FUNC5(TransactionId xid)
{
	SERIALIZABLEXIDTAG sxidtag;
	SERIALIZABLEXID *sxid;
	bool		found;

	/*
	 * If we're not tracking predicate lock data for this transaction, we
	 * should ignore the request and return quickly.
	 */
	if (MySerializableXact == InvalidSerializableXact)
		return;

	/* We should have a valid XID and be at the top level. */
	FUNC0(FUNC3(xid));

	FUNC1(SerializableXactHashLock, LW_EXCLUSIVE);

	/* This should only be done once per transaction. */
	FUNC0(MySerializableXact->topXid == InvalidTransactionId);

	MySerializableXact->topXid = xid;

	sxidtag.xid = xid;
	sxid = (SERIALIZABLEXID *) FUNC4(SerializableXidHash,
										   &sxidtag,
										   HASH_ENTER, &found);
	FUNC0(!found);

	/* Initialize the structure. */
	sxid->myXact = MySerializableXact;
	FUNC2(SerializableXactHashLock);
}