
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int datumTypeLen; int tuples; TYPE_1__* sortKeys; int sortcontext; } ;
typedef TYPE_2__ Tuplesortstate ;
struct TYPE_9__ {int isnull1; int tuple; int datum1; } ;
struct TYPE_7__ {scalar_t__ abbrev_converter; } ;
typedef TYPE_3__ SortTuple ;
typedef int MemoryContext ;
typedef int Datum ;


 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (int ) ;
 int datumCopy (int ,int,int ) ;
 int tuplesort_gettuple_common (TYPE_2__*,int,TYPE_3__*) ;

bool
tuplesort_getdatum(Tuplesortstate *state, bool forward,
       Datum *val, bool *isNull, Datum *abbrev)
{
 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);
 SortTuple stup;

 if (!tuplesort_gettuple_common(state, forward, &stup))
 {
  MemoryContextSwitchTo(oldcontext);
  return 0;
 }


 MemoryContextSwitchTo(oldcontext);


 if (state->sortKeys->abbrev_converter && abbrev)
  *abbrev = stup.datum1;

 if (stup.isnull1 || !state->tuples)
 {
  *val = stup.datum1;
  *isNull = stup.isnull1;
 }
 else
 {

  *val = datumCopy(PointerGetDatum(stup.tuple), 0, state->datumTypeLen);
  *isNull = 0;
 }

 return 1;
}
