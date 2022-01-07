
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection; } ;
typedef TYPE_1__ ParallelSlot ;


 int consumeQueryResult (int ) ;

bool
ParallelSlotsWaitCompletion(ParallelSlot *slots, int numslots)
{
 int i;

 for (i = 0; i < numslots; i++)
 {
  if (!consumeQueryResult((slots + i)->connection))
   return 0;
 }

 return 1;
}
