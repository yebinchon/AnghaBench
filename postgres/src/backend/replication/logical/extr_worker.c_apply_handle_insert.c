
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_20__ {int es_tupleTable; int es_result_relation_info; } ;
struct TYPE_19__ {int localrel; } ;
struct TYPE_18__ {int values; } ;
typedef int StringInfo ;
typedef int MemoryContext ;
typedef TYPE_1__ LogicalRepTupleData ;
typedef TYPE_2__ LogicalRepRelMapEntry ;
typedef int LogicalRepRelId ;
typedef TYPE_3__ EState ;


 int AfterTriggerEndQuery (TYPE_3__*) ;
 int CommandCounterIncrement () ;
 int ExecCloseIndices (int ) ;
 int * ExecInitExtraTupleSlot (TYPE_3__*,int ,int *) ;
 int ExecOpenIndices (int ,int) ;
 int ExecResetTupleTable (int ,int) ;
 int ExecSimpleRelationInsert (TYPE_3__*,int *) ;
 int FreeExecutorState (TYPE_3__*) ;
 int GetPerTupleMemoryContext (TYPE_3__*) ;
 int GetTransactionSnapshot () ;
 int MemoryContextSwitchTo (int ) ;
 int NoLock ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int TTSOpsVirtual ;
 TYPE_3__* create_estate_for_relation (TYPE_2__*) ;
 int ensure_transaction () ;
 int logicalrep_read_insert (int ,TYPE_1__*) ;
 int logicalrep_rel_close (TYPE_2__*,int ) ;
 TYPE_2__* logicalrep_rel_open (int ,int ) ;
 int should_apply_changes_for_rel (TYPE_2__*) ;
 int slot_fill_defaults (TYPE_2__*,TYPE_3__*,int *) ;
 int slot_store_cstrings (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
apply_handle_insert(StringInfo s)
{
 LogicalRepRelMapEntry *rel;
 LogicalRepTupleData newtup;
 LogicalRepRelId relid;
 EState *estate;
 TupleTableSlot *remoteslot;
 MemoryContext oldctx;

 ensure_transaction();

 relid = logicalrep_read_insert(s, &newtup);
 rel = logicalrep_rel_open(relid, RowExclusiveLock);
 if (!should_apply_changes_for_rel(rel))
 {




  logicalrep_rel_close(rel, RowExclusiveLock);
  return;
 }


 estate = create_estate_for_relation(rel);
 remoteslot = ExecInitExtraTupleSlot(estate,
          RelationGetDescr(rel->localrel),
          &TTSOpsVirtual);


 PushActiveSnapshot(GetTransactionSnapshot());


 oldctx = MemoryContextSwitchTo(GetPerTupleMemoryContext(estate));
 slot_store_cstrings(remoteslot, rel, newtup.values);
 slot_fill_defaults(rel, estate, remoteslot);
 MemoryContextSwitchTo(oldctx);

 ExecOpenIndices(estate->es_result_relation_info, 0);


 ExecSimpleRelationInsert(estate, remoteslot);


 ExecCloseIndices(estate->es_result_relation_info);
 PopActiveSnapshot();


 AfterTriggerEndQuery(estate);

 ExecResetTupleTable(estate->es_tupleTable, 0);
 FreeExecutorState(estate);

 logicalrep_rel_close(rel, NoLock);

 CommandCounterIncrement();
}
