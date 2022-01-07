
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dboid; char* data; int srcPid; int xid; int length; } ;
typedef int Snapshot ;
typedef int volatile QueuePosition ;
typedef TYPE_1__ AsyncQueueEntry ;


 scalar_t__ IsListeningOn (char*) ;
 scalar_t__ MyDatabaseId ;
 int NotifyMyFrontEnd (char*,char*,int ) ;
 scalar_t__ QUEUE_POS_EQUAL (int volatile,int volatile) ;
 int QUEUE_POS_OFFSET (int volatile) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ XidInMVCCSnapshot (int ,int ) ;
 int asyncQueueAdvance (int volatile*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static bool
asyncQueueProcessPageEntries(volatile QueuePosition *current,
        QueuePosition stop,
        char *page_buffer,
        Snapshot snapshot)
{
 bool reachedStop = 0;
 bool reachedEndOfPage;
 AsyncQueueEntry *qe;

 do
 {
  QueuePosition thisentry = *current;

  if (QUEUE_POS_EQUAL(thisentry, stop))
   break;

  qe = (AsyncQueueEntry *) (page_buffer + QUEUE_POS_OFFSET(thisentry));






  reachedEndOfPage = asyncQueueAdvance(current, qe->length);


  if (qe->dboid == MyDatabaseId)
  {
   if (XidInMVCCSnapshot(qe->xid, snapshot))
   {
    *current = thisentry;
    reachedStop = 1;
    break;
   }
   else if (TransactionIdDidCommit(qe->xid))
   {

    char *channel = qe->data;

    if (IsListeningOn(channel))
    {

     char *payload = qe->data + strlen(channel) + 1;

     NotifyMyFrontEnd(channel, payload, qe->srcPid);
    }
   }
   else
   {




   }
  }


 } while (!reachedEndOfPage);

 if (QUEUE_POS_EQUAL(*current, stop))
  reachedStop = 1;

 return reachedStop;
}
