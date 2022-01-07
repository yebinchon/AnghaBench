
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int (* storeRes_func ) (TYPE_1__*,int *,scalar_t__,int,int,int,int *) ;
struct TYPE_18__ {scalar_t__ norderbys; int recheck; double* distances; int recheckDistances; scalar_t__ leafValue; int leafDatum; int returnData; int level; int traversalValue; int reconstructedValue; int orderbys; int nkeys; int scankeys; } ;
typedef TYPE_2__ spgLeafConsistentOut ;
typedef TYPE_2__ spgLeafConsistentIn ;
struct TYPE_20__ {int heapPtr; } ;
struct TYPE_19__ {int level; int traversalValue; int value; } ;
struct TYPE_17__ {int searchNulls; scalar_t__ numberOfNonNullOrderBys; int traversalCxt; int indexCollation; int leafConsistentFn; int state; int want_itup; int orderByData; int numberOfKeys; int keyData; int tempCxt; } ;
typedef TYPE_4__ SpGistSearchItem ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef TYPE_6__* SpGistLeafTuple ;
typedef int MemoryContext ;
typedef scalar_t__ Datum ;


 int Assert (int) ;
 int DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (TYPE_2__*) ;
 int SGLTDATUM (TYPE_6__*,int *) ;
 int spgAddSearchItemToQueue (TYPE_1__*,TYPE_4__*) ;
 TYPE_4__* spgNewHeapItem (TYPE_1__*,int ,int *,scalar_t__,int,int,int,double*) ;

__attribute__((used)) static bool
spgLeafTest(SpGistScanOpaque so, SpGistSearchItem *item,
   SpGistLeafTuple leafTuple, bool isnull,
   bool *reportedSome, storeRes_func storeRes)
{
 Datum leafValue;
 double *distances;
 bool result;
 bool recheck;
 bool recheckDistances;

 if (isnull)
 {

  Assert(so->searchNulls);
  leafValue = (Datum) 0;
  distances = ((void*)0);
  recheck = 0;
  recheckDistances = 0;
  result = 1;
 }
 else
 {
  spgLeafConsistentIn in;
  spgLeafConsistentOut out;


  MemoryContext oldCxt = MemoryContextSwitchTo(so->tempCxt);

  in.scankeys = so->keyData;
  in.nkeys = so->numberOfKeys;
  in.orderbys = so->orderByData;
  in.norderbys = so->numberOfNonNullOrderBys;
  in.reconstructedValue = item->value;
  in.traversalValue = item->traversalValue;
  in.level = item->level;
  in.returnData = so->want_itup;
  in.leafDatum = SGLTDATUM(leafTuple, &so->state);

  out.leafValue = (Datum) 0;
  out.recheck = 0;
  out.distances = ((void*)0);
  out.recheckDistances = 0;

  result = DatumGetBool(FunctionCall2Coll(&so->leafConsistentFn,
            so->indexCollation,
            PointerGetDatum(&in),
            PointerGetDatum(&out)));
  recheck = out.recheck;
  recheckDistances = out.recheckDistances;
  leafValue = out.leafValue;
  distances = out.distances;

  MemoryContextSwitchTo(oldCxt);
 }

 if (result)
 {

  if (so->numberOfNonNullOrderBys > 0)
  {

   MemoryContext oldCxt = MemoryContextSwitchTo(so->traversalCxt);
   SpGistSearchItem *heapItem = spgNewHeapItem(so, item->level,
              &leafTuple->heapPtr,
              leafValue,
              recheck,
              recheckDistances,
              isnull,
              distances);

   spgAddSearchItemToQueue(so, heapItem);

   MemoryContextSwitchTo(oldCxt);
  }
  else
  {

   Assert(!recheckDistances);
   storeRes(so, &leafTuple->heapPtr, leafValue, isnull,
      recheck, 0, ((void*)0));
   *reportedSome = 1;
  }
 }

 return result;
}
