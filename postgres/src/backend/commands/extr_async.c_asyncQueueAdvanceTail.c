
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueuePosition ;
typedef scalar_t__ BackendId ;


 int Assert (int) ;
 int AsyncCtl ;
 int AsyncQueueLock ;
 scalar_t__ InvalidPid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ QUEUE_BACKEND_PID (scalar_t__) ;
 int QUEUE_BACKEND_POS (scalar_t__) ;
 scalar_t__ QUEUE_FIRST_LISTENER ;
 int QUEUE_HEAD ;
 scalar_t__ QUEUE_NEXT_LISTENER (scalar_t__) ;
 int QUEUE_POS_MIN (int ,int ) ;
 int QUEUE_POS_PAGE (int ) ;
 int QUEUE_TAIL ;
 int SLRU_PAGES_PER_SEGMENT ;
 int SimpleLruTruncate (int ,int) ;
 scalar_t__ asyncQueuePagePrecedes (int,int) ;

__attribute__((used)) static void
asyncQueueAdvanceTail(void)
{
 QueuePosition min;
 int oldtailpage;
 int newtailpage;
 int boundary;

 LWLockAcquire(AsyncQueueLock, LW_EXCLUSIVE);
 min = QUEUE_HEAD;
 for (BackendId i = QUEUE_FIRST_LISTENER; i > 0; i = QUEUE_NEXT_LISTENER(i))
 {
  Assert(QUEUE_BACKEND_PID(i) != InvalidPid);
  min = QUEUE_POS_MIN(min, QUEUE_BACKEND_POS(i));
 }
 oldtailpage = QUEUE_POS_PAGE(QUEUE_TAIL);
 QUEUE_TAIL = min;
 LWLockRelease(AsyncQueueLock);
 newtailpage = QUEUE_POS_PAGE(min);
 boundary = newtailpage - (newtailpage % SLRU_PAGES_PER_SEGMENT);
 if (asyncQueuePagePrecedes(oldtailpage, boundary))
 {




  SimpleLruTruncate(AsyncCtl, newtailpage);
 }
}
