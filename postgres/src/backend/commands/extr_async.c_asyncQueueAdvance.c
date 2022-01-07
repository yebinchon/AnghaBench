
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueuePosition ;


 int Assert (int) ;
 int AsyncQueueEntryEmptySize ;
 int QUEUEALIGN (int ) ;
 int QUEUE_MAX_PAGE ;
 int QUEUE_PAGESIZE ;
 int QUEUE_POS_OFFSET (int volatile) ;
 int QUEUE_POS_PAGE (int volatile) ;
 int SET_QUEUE_POS (int volatile,int,int) ;

__attribute__((used)) static bool
asyncQueueAdvance(volatile QueuePosition *position, int entryLength)
{
 int pageno = QUEUE_POS_PAGE(*position);
 int offset = QUEUE_POS_OFFSET(*position);
 bool pageJump = 0;





 offset += entryLength;
 Assert(offset <= QUEUE_PAGESIZE);






 if (offset + QUEUEALIGN(AsyncQueueEntryEmptySize) > QUEUE_PAGESIZE)
 {
  pageno++;
  if (pageno > QUEUE_MAX_PAGE)
   pageno = 0;
  offset = 0;
  pageJump = 1;
 }

 SET_QUEUE_POS(*position, pageno, offset);
 return pageJump;
}
