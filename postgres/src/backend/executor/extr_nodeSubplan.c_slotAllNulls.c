
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tts_tupleDescriptor; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_5__ {int natts; } ;


 int slot_attisnull (TYPE_2__*,int) ;

__attribute__((used)) static bool
slotAllNulls(TupleTableSlot *slot)
{
 int ncols = slot->tts_tupleDescriptor->natts;
 int i;

 for (i = 1; i <= ncols; i++)
 {
  if (!slot_attisnull(slot, i))
   return 0;
 }
 return 1;
}
