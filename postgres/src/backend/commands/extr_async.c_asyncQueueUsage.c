
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUE_HEAD ;
 int QUEUE_MAX_PAGE ;
 int QUEUE_POS_PAGE (int ) ;
 int QUEUE_TAIL ;

__attribute__((used)) static double
asyncQueueUsage(void)
{
 int headPage = QUEUE_POS_PAGE(QUEUE_HEAD);
 int tailPage = QUEUE_POS_PAGE(QUEUE_TAIL);
 int occupied;

 occupied = headPage - tailPage;

 if (occupied == 0)
  return (double) 0;

 if (occupied < 0)
 {

  occupied += QUEUE_MAX_PAGE + 1;
 }

 return (double) occupied / (double) ((QUEUE_MAX_PAGE + 1) / 2);
}
