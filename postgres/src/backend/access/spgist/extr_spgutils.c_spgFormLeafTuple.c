
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int size; int heapPtr; int nextOffset; } ;
struct TYPE_6__ {int attLeafType; } ;
typedef TYPE_1__ SpGistState ;
typedef TYPE_2__* SpGistLeafTuple ;
typedef int * ItemPointer ;
typedef int Datum ;


 int InvalidOffsetNumber ;
 unsigned int SGDTSIZE ;
 int SGLTDATAPTR (TYPE_2__*) ;
 unsigned int SGLTHDRSZ ;
 scalar_t__ SpGistGetTypeSize (int *,int ) ;
 int memcpyDatum (int ,int *,int ) ;
 scalar_t__ palloc0 (unsigned int) ;

SpGistLeafTuple
spgFormLeafTuple(SpGistState *state, ItemPointer heapPtr,
     Datum datum, bool isnull)
{
 SpGistLeafTuple tup;
 unsigned int size;


 size = SGLTHDRSZ;
 if (!isnull)
  size += SpGistGetTypeSize(&state->attLeafType, datum);





 if (size < SGDTSIZE)
  size = SGDTSIZE;


 tup = (SpGistLeafTuple) palloc0(size);

 tup->size = size;
 tup->nextOffset = InvalidOffsetNumber;
 tup->heapPtr = *heapPtr;
 if (!isnull)
  memcpyDatum(SGLTDATAPTR(tup), &state->attLeafType, datum);

 return tup;
}
