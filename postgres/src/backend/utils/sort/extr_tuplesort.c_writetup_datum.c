
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int writtenlen ;
struct TYPE_6__ {int slabAllocatorUsed; int tapeset; scalar_t__ randomAccess; int datumTypeLen; int tuples; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {void* tuple; int datum1; scalar_t__ isnull1; } ;
typedef TYPE_2__ SortTuple ;
typedef int Datum ;


 int Assert (int) ;
 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (void*) ;
 int LogicalTapeWrite (int ,int,void*,int) ;
 int PointerGetDatum (void*) ;
 unsigned int datumGetSize (int ,int,int ) ;
 int pfree (void*) ;

__attribute__((used)) static void
writetup_datum(Tuplesortstate *state, int tapenum, SortTuple *stup)
{
 void *waddr;
 unsigned int tuplen;
 unsigned int writtenlen;

 if (stup->isnull1)
 {
  waddr = ((void*)0);
  tuplen = 0;
 }
 else if (!state->tuples)
 {
  waddr = &stup->datum1;
  tuplen = sizeof(Datum);
 }
 else
 {
  waddr = stup->tuple;
  tuplen = datumGetSize(PointerGetDatum(stup->tuple), 0, state->datumTypeLen);
  Assert(tuplen != 0);
 }

 writtenlen = tuplen + sizeof(unsigned int);

 LogicalTapeWrite(state->tapeset, tapenum,
      (void *) &writtenlen, sizeof(writtenlen));
 LogicalTapeWrite(state->tapeset, tapenum,
      waddr, tuplen);
 if (state->randomAccess)
  LogicalTapeWrite(state->tapeset, tapenum,
       (void *) &writtenlen, sizeof(writtenlen));

 if (!state->slabAllocatorUsed && stup->tuple)
 {
  FREEMEM(state, GetMemoryChunkSpace(stup->tuple));
  pfree(stup->tuple);
 }
}
