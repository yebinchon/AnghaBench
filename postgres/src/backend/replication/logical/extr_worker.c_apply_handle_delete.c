
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_22__ {int es_tupleTable; int es_result_relation_info; } ;
struct TYPE_19__ {scalar_t__ replident; } ;
struct TYPE_21__ {int localrel; TYPE_1__ remoterel; } ;
struct TYPE_20__ {int values; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_2__ LogicalRepTupleData ;
typedef TYPE_3__ LogicalRepRelMapEntry ;
typedef int LogicalRepRelId ;
typedef TYPE_4__ EState ;
typedef int EPQState ;


 int AfterTriggerEndQuery (TYPE_4__*) ;
 int Assert (int) ;
 int CommandCounterIncrement () ;
 int DEBUG1 ;
 int EvalPlanQualEnd (int *) ;
 int EvalPlanQualInit (int *,TYPE_4__*,int *,int ,int) ;
 int EvalPlanQualSetSlot (int *,int *) ;
 int ExecCloseIndices (int ) ;
 int * ExecInitExtraTupleSlot (TYPE_4__*,int ,int *) ;
 int ExecOpenIndices (int ,int) ;
 int ExecResetTupleTable (int ,int) ;
 int ExecSimpleRelationDelete (TYPE_4__*,int *,int *) ;
 int FreeExecutorState (TYPE_4__*) ;
 int GetPerTupleMemoryContext (TYPE_4__*) ;
 int GetRelationIdentityOrPK (int ) ;
 int GetTransactionSnapshot () ;
 int LockTupleExclusive ;
 int MemoryContextSwitchTo (int ) ;
 int NIL ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 int RelationFindReplTupleByIndex (int ,int ,int ,int *,int *) ;
 int RelationFindReplTupleSeq (int ,int ,int *,int *) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int RowExclusiveLock ;
 int TTSOpsVirtual ;
 int check_relation_updatable (TYPE_3__*) ;
 TYPE_4__* create_estate_for_relation (TYPE_3__*) ;
 int elog (int ,char*,int ) ;
 int ensure_transaction () ;
 int logicalrep_read_delete (int ,TYPE_2__*) ;
 int logicalrep_rel_close (TYPE_3__*,int ) ;
 TYPE_3__* logicalrep_rel_open (int ,int ) ;
 int should_apply_changes_for_rel (TYPE_3__*) ;
 int slot_store_cstrings (int *,TYPE_3__*,int ) ;
 int * table_slot_create (int ,int *) ;

__attribute__((used)) static void
apply_handle_delete(StringInfo s)
{
 LogicalRepRelMapEntry *rel;
 LogicalRepTupleData oldtup;
 LogicalRepRelId relid;
 Oid idxoid;
 EState *estate;
 EPQState epqstate;
 TupleTableSlot *remoteslot;
 TupleTableSlot *localslot;
 bool found;
 MemoryContext oldctx;

 ensure_transaction();

 relid = logicalrep_read_delete(s, &oldtup);
 rel = logicalrep_rel_open(relid, RowExclusiveLock);
 if (!should_apply_changes_for_rel(rel))
 {




  logicalrep_rel_close(rel, RowExclusiveLock);
  return;
 }


 check_relation_updatable(rel);


 estate = create_estate_for_relation(rel);
 remoteslot = ExecInitExtraTupleSlot(estate,
          RelationGetDescr(rel->localrel),
          &TTSOpsVirtual);
 localslot = table_slot_create(rel->localrel,
          &estate->es_tupleTable);
 EvalPlanQualInit(&epqstate, estate, ((void*)0), NIL, -1);

 PushActiveSnapshot(GetTransactionSnapshot());
 ExecOpenIndices(estate->es_result_relation_info, 0);


 oldctx = MemoryContextSwitchTo(GetPerTupleMemoryContext(estate));
 slot_store_cstrings(remoteslot, rel, oldtup.values);
 MemoryContextSwitchTo(oldctx);





 idxoid = GetRelationIdentityOrPK(rel->localrel);
 Assert(OidIsValid(idxoid) ||
     (rel->remoterel.replident == REPLICA_IDENTITY_FULL));

 if (OidIsValid(idxoid))
  found = RelationFindReplTupleByIndex(rel->localrel, idxoid,
            LockTupleExclusive,
            remoteslot, localslot);
 else
  found = RelationFindReplTupleSeq(rel->localrel, LockTupleExclusive,
           remoteslot, localslot);

 if (found)
 {
  EvalPlanQualSetSlot(&epqstate, localslot);


  ExecSimpleRelationDelete(estate, &epqstate, localslot);
 }
 else
 {

  elog(DEBUG1,
    "logical replication could not find row for delete "
    "in replication target relation \"%s\"",
    RelationGetRelationName(rel->localrel));
 }


 ExecCloseIndices(estate->es_result_relation_info);
 PopActiveSnapshot();


 AfterTriggerEndQuery(estate);

 EvalPlanQualEnd(&epqstate);
 ExecResetTupleTable(estate->es_tupleTable, 0);
 FreeExecutorState(estate);

 logicalrep_rel_close(rel, NoLock);

 CommandCounterIncrement();
}
