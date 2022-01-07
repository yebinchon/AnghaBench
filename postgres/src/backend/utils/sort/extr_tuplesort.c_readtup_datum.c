
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_6__ {int tapeset; scalar_t__ randomAccess; int tuples; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {unsigned int datum1; int isnull1; int * tuple; } ;
typedef TYPE_2__ SortTuple ;
typedef unsigned int Datum ;


 int Assert (int) ;
 int LogicalTapeReadExact (int ,int,unsigned int*,int) ;
 unsigned int PointerGetDatum (void*) ;
 void* readtup_alloc (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void
readtup_datum(Tuplesortstate *state, SortTuple *stup,
     int tapenum, unsigned int len)
{
 unsigned int tuplen = len - sizeof(unsigned int);

 if (tuplen == 0)
 {

  stup->datum1 = (Datum) 0;
  stup->isnull1 = 1;
  stup->tuple = ((void*)0);
 }
 else if (!state->tuples)
 {
  Assert(tuplen == sizeof(Datum));
  LogicalTapeReadExact(state->tapeset, tapenum,
        &stup->datum1, tuplen);
  stup->isnull1 = 0;
  stup->tuple = ((void*)0);
 }
 else
 {
  void *raddr = readtup_alloc(state, tuplen);

  LogicalTapeReadExact(state->tapeset, tapenum,
        raddr, tuplen);
  stup->datum1 = PointerGetDatum(raddr);
  stup->isnull1 = 0;
  stup->tuple = raddr;
 }

 if (state->randomAccess)
  LogicalTapeReadExact(state->tapeset, tapenum,
        &tuplen, sizeof(tuplen));
}
