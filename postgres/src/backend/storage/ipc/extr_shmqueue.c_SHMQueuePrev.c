
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__ const* prev; } ;
typedef int Size ;
typedef TYPE_1__ const SHM_QUEUE ;
typedef int * Pointer ;


 int Assert (int ) ;
 int ShmemAddrIsValid (TYPE_1__ const*) ;

Pointer
SHMQueuePrev(const SHM_QUEUE *queue, const SHM_QUEUE *curElem, Size linkOffset)
{
 SHM_QUEUE *elemPtr = curElem->prev;

 Assert(ShmemAddrIsValid(curElem));

 if (elemPtr == queue)
  return ((void*)0);

 return (Pointer) (((char *) elemPtr) - linkOffset);
}
