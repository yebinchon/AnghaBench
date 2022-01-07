
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length; int data; int srcPid; int xid; int dboid; } ;
struct TYPE_5__ {size_t channel_len; size_t payload_len; int data; } ;
typedef TYPE_1__ Notification ;
typedef TYPE_2__ AsyncQueueEntry ;


 int Assert (int) ;
 size_t AsyncQueueEntryEmptySize ;
 int GetCurrentTransactionId () ;
 int MyDatabaseId ;
 int MyProcPid ;
 size_t NAMEDATALEN ;
 size_t NOTIFY_PAYLOAD_MAX_LENGTH ;
 int QUEUEALIGN (int) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static void
asyncQueueNotificationToEntry(Notification *n, AsyncQueueEntry *qe)
{
 size_t channellen = n->channel_len;
 size_t payloadlen = n->payload_len;
 int entryLength;

 Assert(channellen < NAMEDATALEN);
 Assert(payloadlen < NOTIFY_PAYLOAD_MAX_LENGTH);


 entryLength = AsyncQueueEntryEmptySize + payloadlen + channellen;
 entryLength = QUEUEALIGN(entryLength);
 qe->length = entryLength;
 qe->dboid = MyDatabaseId;
 qe->xid = GetCurrentTransactionId();
 qe->srcPid = MyProcPid;
 memcpy(qe->data, n->data, channellen + payloadlen + 2);
}
