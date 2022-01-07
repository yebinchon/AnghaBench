
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleTableSlot ;
struct TYPE_7__ {int xs_want_itup; int xs_itupdesc; int xs_itup; scalar_t__ xs_recheck; } ;
typedef int SnapshotData ;
typedef int ScanKey ;
typedef int ScanDirection ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int * ItemPointer ;
typedef TYPE_1__* IndexScanDesc ;
typedef int Datum ;
typedef scalar_t__ Buffer ;


 int ERROR ;
 int ExecClearTuple (int *) ;
 int INDEX_MAX_KEYS ;
 int InitNonVacuumableSnapshot (int ,int ) ;
 scalar_t__ InvalidBuffer ;
 int ItemPointerGetBlockNumber (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int RecentGlobalXmin ;
 int RelationGetRelationName (int ) ;
 int ReleaseBuffer (scalar_t__) ;
 int VM_ALL_VISIBLE (int ,int ,scalar_t__*) ;
 int datumCopy (int ,int,int ) ;
 int elog (int ,char*,...) ;
 TYPE_1__* index_beginscan (int ,int ,int *,int,int ) ;
 int index_deform_tuple (int ,int ,int *,int*) ;
 int index_endscan (TYPE_1__*) ;
 int index_fetch_heap (TYPE_1__*,int *) ;
 int * index_getnext_tid (TYPE_1__*,int ) ;
 int index_rescan (TYPE_1__*,int ,int,int *,int ) ;

__attribute__((used)) static bool
get_actual_variable_endpoint(Relation heapRel,
        Relation indexRel,
        ScanDirection indexscandir,
        ScanKey scankeys,
        int16 typLen,
        bool typByVal,
        TupleTableSlot *tableslot,
        MemoryContext outercontext,
        Datum *endpointDatum)
{
 bool have_data = 0;
 SnapshotData SnapshotNonVacuumable;
 IndexScanDesc index_scan;
 Buffer vmbuffer = InvalidBuffer;
 ItemPointer tid;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 MemoryContext oldcontext;
 InitNonVacuumableSnapshot(SnapshotNonVacuumable, RecentGlobalXmin);

 index_scan = index_beginscan(heapRel, indexRel,
         &SnapshotNonVacuumable,
         1, 0);

 index_scan->xs_want_itup = 1;
 index_rescan(index_scan, scankeys, 1, ((void*)0), 0);


 while ((tid = index_getnext_tid(index_scan, indexscandir)) != ((void*)0))
 {
  if (!VM_ALL_VISIBLE(heapRel,
       ItemPointerGetBlockNumber(tid),
       &vmbuffer))
  {

   if (!index_fetch_heap(index_scan, tableslot))
    continue;


   ExecClearTuple(tableslot);





  }





  if (!index_scan->xs_itup)
   elog(ERROR, "no data returned for index-only scan");
  if (index_scan->xs_recheck)
   elog(ERROR, "unexpected recheck indication from btree");


  index_deform_tuple(index_scan->xs_itup,
         index_scan->xs_itupdesc,
         values, isnull);


  if (isnull[0])
   elog(ERROR, "found unexpected null value in index \"%s\"",
     RelationGetRelationName(indexRel));


  oldcontext = MemoryContextSwitchTo(outercontext);
  *endpointDatum = datumCopy(values[0], typByVal, typLen);
  MemoryContextSwitchTo(oldcontext);
  have_data = 1;
  break;
 }

 if (vmbuffer != InvalidBuffer)
  ReleaseBuffer(vmbuffer);
 index_endscan(index_scan);

 return have_data;
}
