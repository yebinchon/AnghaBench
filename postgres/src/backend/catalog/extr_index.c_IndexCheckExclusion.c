
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int tts_tid; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int TableScanDesc ;
struct TYPE_15__ {int ecxt_per_tuple_memory; TYPE_1__* ecxt_scantuple; } ;
struct TYPE_14__ {int * ii_PredicateState; int ii_ExpressionsState; int ii_Predicate; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef TYPE_2__ IndexInfo ;
typedef int ExprState ;
typedef TYPE_3__ ExprContext ;
typedef int EState ;
typedef int Datum ;


 int CHECK_FOR_INTERRUPTS () ;
 int * CreateExecutorState () ;
 int ExecDropSingleTupleTableSlot (TYPE_1__*) ;
 int * ExecPrepareQual (int ,int *) ;
 int ExecQual (int *,TYPE_3__*) ;
 int FormIndexDatum (TYPE_2__*,TYPE_1__*,int *,int *,int*) ;
 int ForwardScanDirection ;
 int FreeExecutorState (int *) ;
 int GetLatestSnapshot () ;
 TYPE_3__* GetPerTupleExprContext (int *) ;
 int INDEX_MAX_KEYS ;
 int MemoryContextReset (int ) ;
 int NIL ;
 int RegisterSnapshot (int ) ;
 scalar_t__ ReindexIsCurrentlyProcessingIndex (int ) ;
 int RelationGetRelid (int ) ;
 int ResetReindexProcessing () ;
 int UnregisterSnapshot (int ) ;
 int check_exclusion_constraint (int ,int ,TYPE_2__*,int *,int *,int*,int *,int) ;
 int table_beginscan_strat (int ,int ,int ,int *,int,int) ;
 int table_endscan (int ) ;
 scalar_t__ table_scan_getnextslot (int ,int ,TYPE_1__*) ;
 TYPE_1__* table_slot_create (int ,int *) ;

__attribute__((used)) static void
IndexCheckExclusion(Relation heapRelation,
     Relation indexRelation,
     IndexInfo *indexInfo)
{
 TableScanDesc scan;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 ExprState *predicate;
 TupleTableSlot *slot;
 EState *estate;
 ExprContext *econtext;
 Snapshot snapshot;






 if (ReindexIsCurrentlyProcessingIndex(RelationGetRelid(indexRelation)))
  ResetReindexProcessing();





 estate = CreateExecutorState();
 econtext = GetPerTupleExprContext(estate);
 slot = table_slot_create(heapRelation, ((void*)0));


 econtext->ecxt_scantuple = slot;


 predicate = ExecPrepareQual(indexInfo->ii_Predicate, estate);




 snapshot = RegisterSnapshot(GetLatestSnapshot());
 scan = table_beginscan_strat(heapRelation,
         snapshot,
         0,
         ((void*)0),
         1,
         1);

 while (table_scan_getnextslot(scan, ForwardScanDirection, slot))
 {
  CHECK_FOR_INTERRUPTS();




  if (predicate != ((void*)0))
  {
   if (!ExecQual(predicate, econtext))
    continue;
  }




  FormIndexDatum(indexInfo,
        slot,
        estate,
        values,
        isnull);




  check_exclusion_constraint(heapRelation,
           indexRelation, indexInfo,
           &(slot->tts_tid), values, isnull,
           estate, 1);

  MemoryContextReset(econtext->ecxt_per_tuple_memory);
 }

 table_endscan(scan);
 UnregisterSnapshot(snapshot);

 ExecDropSingleTupleTableSlot(slot);

 FreeExecutorState(estate);


 indexInfo->ii_ExpressionsState = NIL;
 indexInfo->ii_PredicateState = ((void*)0);
}
