
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_27__ {TYPE_5__* es_result_relation_info; } ;
struct TYPE_26__ {TYPE_4__* rd_att; TYPE_1__* rd_rel; } ;
struct TYPE_25__ {scalar_t__ ri_NumIndices; TYPE_6__* ri_RelationDesc; scalar_t__ ri_PartitionCheck; TYPE_2__* ri_TrigDesc; } ;
struct TYPE_24__ {TYPE_3__* constr; } ;
struct TYPE_23__ {scalar_t__ has_generated_stored; } ;
struct TYPE_22__ {scalar_t__ trig_insert_before_row; } ;
struct TYPE_21__ {scalar_t__ relkind; } ;
typedef TYPE_5__ ResultRelInfo ;
typedef TYPE_6__* Relation ;
typedef int List ;
typedef TYPE_7__ EState ;


 int Assert (int) ;
 int CMD_INSERT ;
 int CheckCmdReplicaIdentity (TYPE_6__*,int ) ;
 int ExecARInsertTriggers (TYPE_7__*,TYPE_5__*,int *,int *,int *) ;
 int ExecBRInsertTriggers (TYPE_7__*,TYPE_5__*,int *) ;
 int ExecComputeStoredGenerated (TYPE_7__*,int *) ;
 int ExecConstraints (TYPE_5__*,int *,TYPE_7__*) ;
 int * ExecInsertIndexTuples (int *,TYPE_7__*,int,int *,int *) ;
 int ExecPartitionCheck (TYPE_5__*,int *,TYPE_7__*,int) ;
 int * NIL ;
 scalar_t__ RELKIND_RELATION ;
 int list_free (int *) ;
 int simple_table_tuple_insert (TYPE_6__*,int *) ;

void
ExecSimpleRelationInsert(EState *estate, TupleTableSlot *slot)
{
 bool skip_tuple = 0;
 ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
 Relation rel = resultRelInfo->ri_RelationDesc;


 Assert(rel->rd_rel->relkind == RELKIND_RELATION);

 CheckCmdReplicaIdentity(rel, CMD_INSERT);


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_insert_before_row)
 {
  if (!ExecBRInsertTriggers(estate, resultRelInfo, slot))
   skip_tuple = 1;
 }

 if (!skip_tuple)
 {
  List *recheckIndexes = NIL;


  if (rel->rd_att->constr &&
   rel->rd_att->constr->has_generated_stored)
   ExecComputeStoredGenerated(estate, slot);


  if (rel->rd_att->constr)
   ExecConstraints(resultRelInfo, slot, estate);
  if (resultRelInfo->ri_PartitionCheck)
   ExecPartitionCheck(resultRelInfo, slot, estate, 1);


  simple_table_tuple_insert(resultRelInfo->ri_RelationDesc, slot);

  if (resultRelInfo->ri_NumIndices > 0)
   recheckIndexes = ExecInsertIndexTuples(slot, estate, 0, ((void*)0),
               NIL);


  ExecARInsertTriggers(estate, resultRelInfo, slot,
        recheckIndexes, ((void*)0));







  list_free(recheckIndexes);
 }
}
