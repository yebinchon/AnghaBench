
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* shared; } ;
struct TYPE_11__ {int events; } ;
struct TYPE_10__ {scalar_t__ length; char* data; int dboid; } ;
struct TYPE_9__ {int* page_dirty; scalar_t__* page_buffer; } ;
typedef int QueuePosition ;
typedef int Notification ;
typedef int ListCell ;
typedef TYPE_2__ AsyncQueueEntry ;


 TYPE_6__* AsyncCtl ;
 int AsyncCtlLock ;
 int InvalidOid ;
 int InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int QUEUE_CLEANUP_DELAY ;
 int QUEUE_HEAD ;
 scalar_t__ QUEUE_PAGESIZE ;
 int QUEUE_POS_OFFSET (int ) ;
 int QUEUE_POS_PAGE (int ) ;
 int SimpleLruReadPage (TYPE_6__*,int,int,int ) ;
 int SimpleLruZeroPage (TYPE_6__*,int) ;
 scalar_t__ asyncQueueAdvance (int *,scalar_t__) ;
 int asyncQueueNotificationToEntry (int *,TYPE_2__*) ;
 int backendTryAdvanceTail ;
 scalar_t__ lfirst (int *) ;
 int * lnext (int ,int *) ;
 int memcpy (scalar_t__,TYPE_2__*,scalar_t__) ;
 TYPE_3__* pendingNotifies ;

__attribute__((used)) static ListCell *
asyncQueueAddEntries(ListCell *nextNotify)
{
 AsyncQueueEntry qe;
 QueuePosition queue_head;
 int pageno;
 int offset;
 int slotno;


 LWLockAcquire(AsyncCtlLock, LW_EXCLUSIVE);
 queue_head = QUEUE_HEAD;


 pageno = QUEUE_POS_PAGE(queue_head);
 slotno = SimpleLruReadPage(AsyncCtl, pageno, 1, InvalidTransactionId);

 AsyncCtl->shared->page_dirty[slotno] = 1;

 while (nextNotify != ((void*)0))
 {
  Notification *n = (Notification *) lfirst(nextNotify);


  asyncQueueNotificationToEntry(n, &qe);

  offset = QUEUE_POS_OFFSET(queue_head);


  if (offset + qe.length <= QUEUE_PAGESIZE)
  {

   nextNotify = lnext(pendingNotifies->events, nextNotify);
  }
  else
  {





   qe.length = QUEUE_PAGESIZE - offset;
   qe.dboid = InvalidOid;
   qe.data[0] = '\0';
   qe.data[1] = '\0';
  }


  memcpy(AsyncCtl->shared->page_buffer[slotno] + offset,
      &qe,
      qe.length);


  if (asyncQueueAdvance(&(queue_head), qe.length))
  {
   slotno = SimpleLruZeroPage(AsyncCtl, QUEUE_POS_PAGE(queue_head));






   if (QUEUE_POS_PAGE(queue_head) % QUEUE_CLEANUP_DELAY == 0)
    backendTryAdvanceTail = 1;


   break;
  }
 }


 QUEUE_HEAD = queue_head;

 LWLockRelease(AsyncCtlLock);

 return nextNotify;
}
