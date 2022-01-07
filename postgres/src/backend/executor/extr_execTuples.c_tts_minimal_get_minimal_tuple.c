
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int mintuple; } ;
typedef TYPE_1__ MinimalTupleTableSlot ;
typedef int MinimalTuple ;


 int tts_minimal_materialize (int *) ;

__attribute__((used)) static MinimalTuple
tts_minimal_get_minimal_tuple(TupleTableSlot *slot)
{
 MinimalTupleTableSlot *mslot = (MinimalTupleTableSlot *) slot;

 if (!mslot->mintuple)
  tts_minimal_materialize(slot);

 return mslot->mintuple;
}
