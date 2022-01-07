
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int tts_tid; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_14__ {int es_snapshot; TYPE_3__* es_result_relation_info; } ;
struct TYPE_13__ {TYPE_1__* ri_TrigDesc; int ri_RelationDesc; } ;
struct TYPE_11__ {scalar_t__ trig_delete_before_row; } ;
typedef TYPE_3__ ResultRelInfo ;
typedef int Relation ;
typedef int * ItemPointer ;
typedef TYPE_4__ EState ;
typedef int EPQState ;


 int CMD_DELETE ;
 int CheckCmdReplicaIdentity (int ,int ) ;
 int ExecARDeleteTriggers (TYPE_4__*,TYPE_3__*,int *,int *,int *) ;
 int ExecBRDeleteTriggers (TYPE_4__*,int *,TYPE_3__*,int *,int *,int *) ;
 int simple_table_tuple_delete (int ,int *,int ) ;

void
ExecSimpleRelationDelete(EState *estate, EPQState *epqstate,
       TupleTableSlot *searchslot)
{
 bool skip_tuple = 0;
 ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
 Relation rel = resultRelInfo->ri_RelationDesc;
 ItemPointer tid = &searchslot->tts_tid;

 CheckCmdReplicaIdentity(rel, CMD_DELETE);


 if (resultRelInfo->ri_TrigDesc &&
  resultRelInfo->ri_TrigDesc->trig_delete_before_row)
 {
  skip_tuple = !ExecBRDeleteTriggers(estate, epqstate, resultRelInfo,
             tid, ((void*)0), ((void*)0));

 }

 if (!skip_tuple)
 {

  simple_table_tuple_delete(rel, tid, estate->es_snapshot);


  ExecARDeleteTriggers(estate, resultRelInfo,
        tid, ((void*)0), ((void*)0));
 }
}
