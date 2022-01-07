
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;


 scalar_t__ TupIsNull (TYPE_1__*) ;
 int debugtup (TYPE_1__*,int *) ;
 int printf (char*) ;

void
print_slot(TupleTableSlot *slot)
{
 if (TupIsNull(slot))
 {
  printf("tuple is null.\n");
  return;
 }
 if (!slot->tts_tupleDescriptor)
 {
  printf("no tuple descriptor.\n");
  return;
 }

 debugtup(slot, ((void*)0));
}
