
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUE_HEAD ;
 int QUEUE_MAX_PAGE ;
 int QUEUE_POS_PAGE (int ) ;
 int QUEUE_TAIL ;
 int SLRU_PAGES_PER_SEGMENT ;
 int asyncQueuePagePrecedes (int,int) ;

__attribute__((used)) static bool
asyncQueueIsFull(void)
{
 int nexthead;
 int boundary;
 nexthead = QUEUE_POS_PAGE(QUEUE_HEAD) + 1;
 if (nexthead > QUEUE_MAX_PAGE)
  nexthead = 0;
 boundary = QUEUE_POS_PAGE(QUEUE_TAIL);
 boundary -= boundary % SLRU_PAGES_PER_SEGMENT;
 return asyncQueuePagePrecedes(nexthead, boundary);
}
