
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int links; } ;
typedef TYPE_1__ PROC_QUEUE ;


 int SHMQueueInit (int *) ;

void
ProcQueueInit(PROC_QUEUE *queue)
{
 SHMQueueInit(&(queue->links));
 queue->size = 0;
}
