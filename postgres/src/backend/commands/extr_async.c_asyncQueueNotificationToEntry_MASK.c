#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int length; int /*<<< orphan*/  data; int /*<<< orphan*/  srcPid; int /*<<< orphan*/  xid; int /*<<< orphan*/  dboid; } ;
struct TYPE_5__ {size_t channel_len; size_t payload_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ Notification ;
typedef  TYPE_2__ AsyncQueueEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t AsyncQueueEntryEmptySize ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  MyProcPid ; 
 size_t NAMEDATALEN ; 
 size_t NOTIFY_PAYLOAD_MAX_LENGTH ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC4(Notification *n, AsyncQueueEntry *qe)
{
	size_t		channellen = n->channel_len;
	size_t		payloadlen = n->payload_len;
	int			entryLength;

	FUNC0(channellen < NAMEDATALEN);
	FUNC0(payloadlen < NOTIFY_PAYLOAD_MAX_LENGTH);

	/* The terminators are already included in AsyncQueueEntryEmptySize */
	entryLength = AsyncQueueEntryEmptySize + payloadlen + channellen;
	entryLength = FUNC2(entryLength);
	qe->length = entryLength;
	qe->dboid = MyDatabaseId;
	qe->xid = FUNC1();
	qe->srcPid = MyProcPid;
	FUNC3(qe->data, n->data, channellen + payloadlen + 2);
}