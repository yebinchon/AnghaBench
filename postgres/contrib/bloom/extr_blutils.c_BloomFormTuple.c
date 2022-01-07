
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nColumns; int sizeOfBloomTuple; } ;
struct TYPE_6__ {int sign; int heapPtr; } ;
typedef int * ItemPointer ;
typedef int Datum ;
typedef TYPE_1__ BloomTuple ;
typedef TYPE_2__ BloomState ;


 scalar_t__ palloc0 (int ) ;
 int signValue (TYPE_2__*,int ,int ,int) ;

BloomTuple *
BloomFormTuple(BloomState *state, ItemPointer iptr, Datum *values, bool *isnull)
{
 int i;
 BloomTuple *res = (BloomTuple *) palloc0(state->sizeOfBloomTuple);

 res->heapPtr = *iptr;


 for (i = 0; i < state->nColumns; i++)
 {

  if (isnull[i])
   continue;

  signValue(state, res->sign, values[i], i);
 }

 return res;
}
