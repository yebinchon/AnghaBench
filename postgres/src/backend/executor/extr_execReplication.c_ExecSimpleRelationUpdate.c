
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_35__ {int tts_tid; } ;
typedef TYPE_5__ TupleTableSlot ;
struct TYPE_38__ {int es_snapshot; TYPE_6__* es_result_relation_info; } ;
struct TYPE_37__ {TYPE_4__* rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_36__ {scalar_t__ ri_NumIndices; scalar_t__ ri_PartitionCheck; TYPE_2__* ri_TrigDesc; TYPE_7__* ri_RelationDesc; } ;
struct TYPE_34__ {TYPE_3__* constr; } ;
struct TYPE_33__ {scalar_t__ has_generated_stored; } ;
struct TYPE_32__ {scalar_t__ trig_update_before_row; } ;
struct TYPE_31__ {scalar_t__ relkind; } ;
typedef TYPE_6__ ResultRelInfo ;
typedef TYPE_7__* Relation ;
typedef int List ;
typedef int * ItemPointer ;
typedef TYPE_8__ EState ;
typedef int EPQState ;


 int Assert (int) ;
 int CMD_UPDATE ;
 int CheckCmdReplicaIdentity (TYPE_7__*,int ) ;
 int ExecARUpdateTriggers (TYPE_8__*,TYPE_6__*,int *,int *,TYPE_5__*,int *,int *) ;
 int ExecBRUpdateTriggers (TYPE_8__*,int *,TYPE_6__*,int *,int *,TYPE_5__*) ;
 int ExecComputeStoredGenerated (TYPE_8__*,TYPE_5__*) ;
 int ExecConstraints (TYPE_6__*,TYPE_5__*,TYPE_8__*) ;
 int * ExecInsertIndexTuples (TYPE_5__*,TYPE_8__*,int,int *,int *) ;
 int ExecPartitionCheck (TYPE_6__*,TYPE_5__*,TYPE_8__*,int) ;
 int * NIL ;
 scalar_t__ RELKIND_RELATION ;
 int list_free (int *) ;
 int simple_table_tuple_update (TYPE_7__*,int *,TYPE_5__*,int ,int*) ;

void
ExecSimpleRelationUpdate(EState *estate, EPQState *epqstate,
       TupleTableSlot *searchslot, TupleTableSlot *slot)
{
 bool skip_tuple = 0;
 ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
 Relation rel = resultRelInfo->ri_RelationDesc;
 ItemPointer tid = &(searchslot->tts_tid);


 Assert(rel->rd_rel->relkind == RELKIND_RELATION);

 CheckCmdReplicaIdentity(rel, CMD_UPDATE);


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_update_before_row)
 {
  if (!ExecBRUpdateTriggers(estate, epqstate, resultRelInfo,
          tid, ((void*)0), slot))
   skip_tuple = 1;
 }

 if (!skip_tuple)
 {
  List *recheckIndexes = NIL;
  bool update_indexes;


  if (rel->rd_att->constr &&
   rel->rd_att->constr->has_generated_stored)
   ExecComputeStoredGenerated(estate, slot);


  if (rel->rd_att->constr)
   ExecConstraints(resultRelInfo, slot, estate);
  if (resultRelInfo->ri_PartitionCheck)
   ExecPartitionCheck(resultRelInfo, slot, estate, 1);

  simple_table_tuple_update(rel, tid, slot, estate->es_snapshot,
          &update_indexes);

  if (resultRelInfo->ri_NumIndices > 0 && update_indexes)
   recheckIndexes = ExecInsertIndexTuples(slot, estate, 0, ((void*)0),
               NIL);


  ExecARUpdateTriggers(estate, resultRelInfo,
        tid, ((void*)0), slot,
        recheckIndexes, ((void*)0));

  list_free(recheckIndexes);
 }
}
