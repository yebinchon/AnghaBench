#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int /*<<< orphan*/  myXact; } ;
struct TYPE_4__ {int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ SERIALIZABLEXIDTAG ;
typedef  TYPE_2__ SERIALIZABLEXID ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  MySerializableXact ; 
 int MyXactDidWrite ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int /*<<< orphan*/  SerializableXidHash ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(TransactionId xid, bool isCommit)
{
	SERIALIZABLEXID *sxid;
	SERIALIZABLEXIDTAG sxidtag;

	sxidtag.xid = xid;

	FUNC0(SerializableXactHashLock, LW_SHARED);
	sxid = (SERIALIZABLEXID *)
		FUNC3(SerializableXidHash, &sxidtag, HASH_FIND, NULL);
	FUNC1(SerializableXactHashLock);

	/* xid will not be found if it wasn't a serializable transaction */
	if (sxid == NULL)
		return;

	/* Release its locks */
	MySerializableXact = sxid->myXact;
	MyXactDidWrite = true;		/* conservatively assume that we wrote
								 * something */
	FUNC2(isCommit, false);
}