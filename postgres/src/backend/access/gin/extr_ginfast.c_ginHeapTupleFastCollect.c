
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int ntuples; int lentuples; int sumsize; TYPE_1__** tuples; } ;
struct TYPE_7__ {int t_tid; } ;
typedef int OffsetNumber ;
typedef int * ItemPointer ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ GinTupleCollector ;
typedef int GinState ;
typedef int GinNullCategory ;
typedef int Datum ;


 int ERROR ;
 TYPE_1__* GinFormTuple (int *,int ,int ,int ,int *,int ,int ,int) ;
 scalar_t__ IndexTupleSize (TYPE_1__*) ;
 int MaxAllocSize ;
 int elog (int ,char*) ;
 int * ginExtractEntries (int *,int ,int ,int,int*,int **) ;
 scalar_t__ palloc (int) ;
 scalar_t__ repalloc (TYPE_1__**,int) ;

void
ginHeapTupleFastCollect(GinState *ginstate,
      GinTupleCollector *collector,
      OffsetNumber attnum, Datum value, bool isNull,
      ItemPointer ht_ctid)
{
 Datum *entries;
 GinNullCategory *categories;
 int32 i,
    nentries;




 entries = ginExtractEntries(ginstate, attnum, value, isNull,
        &nentries, &categories);




 if (nentries < 0 ||
  collector->ntuples + nentries > MaxAllocSize / sizeof(IndexTuple))
  elog(ERROR, "too many entries for GIN index");




 if (collector->tuples == ((void*)0))
 {





  collector->lentuples = 16;
  while (collector->lentuples < nentries)
   collector->lentuples *= 2;

  collector->tuples = (IndexTuple *) palloc(sizeof(IndexTuple) * collector->lentuples);
 }
 else if (collector->lentuples < collector->ntuples + nentries)
 {





  do
  {
   collector->lentuples *= 2;
  } while (collector->lentuples < collector->ntuples + nentries);

  collector->tuples = (IndexTuple *) repalloc(collector->tuples,
             sizeof(IndexTuple) * collector->lentuples);
 }





 for (i = 0; i < nentries; i++)
 {
  IndexTuple itup;

  itup = GinFormTuple(ginstate, attnum, entries[i], categories[i],
       ((void*)0), 0, 0, 1);
  itup->t_tid = *ht_ctid;
  collector->tuples[collector->ntuples++] = itup;
  collector->sumsize += IndexTupleSize(itup);
 }
}
