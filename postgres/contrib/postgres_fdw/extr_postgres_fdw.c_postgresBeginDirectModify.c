
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int UserMapping ;
typedef int TupleDesc ;
struct TYPE_20__ {TYPE_11__* state; scalar_t__ plan; } ;
struct TYPE_23__ {TYPE_3__* ss_ScanTupleSlot; int * ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_28__ {TYPE_4__ ss; void* fdw_state; } ;
struct TYPE_27__ {int serverid; } ;
struct TYPE_26__ {int num_tuples; int numParams; int param_values; int param_exprs; int param_flinfo; int attinmeta; int * rel; void* has_returning; int temp_cxt; void* set_processed; int * retrieved_attrs; int query; int * resultRel; int conn; } ;
struct TYPE_25__ {scalar_t__ checkAsUser; } ;
struct TYPE_24__ {scalar_t__ scanrelid; } ;
struct TYPE_22__ {int tts_tupleDescriptor; } ;
struct TYPE_21__ {int ri_RangeTableIndex; } ;
struct TYPE_19__ {int es_query_cxt; TYPE_2__* es_result_relation_info; } ;
struct TYPE_18__ {int fdw_exprs; int fdw_scan_tlist; TYPE_5__ scan; int fdw_private; } ;
typedef TYPE_6__ RangeTblEntry ;
typedef int PlanState ;
typedef TYPE_7__ PgFdwDirectModifyState ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int Index ;
typedef TYPE_8__ ForeignTable ;
typedef TYPE_9__ ForeignScanState ;
typedef TYPE_10__ ForeignScan ;
typedef TYPE_11__ EState ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int * ExecOpenScanRelation (TYPE_11__*,int ,int) ;
 int FdwDirectModifyPrivateHasReturning ;
 int FdwDirectModifyPrivateRetrievedAttrs ;
 int FdwDirectModifyPrivateSetProcessed ;
 int FdwDirectModifyPrivateUpdateSql ;
 int GetConnection (int *,int) ;
 TYPE_8__* GetForeignTable (int ) ;
 scalar_t__ GetUserId () ;
 int * GetUserMapping (scalar_t__,int ) ;
 int RelationGetDescr (int *) ;
 int RelationGetRelid (int *) ;
 int TupleDescGetAttInMetadata (int ) ;
 TYPE_6__* exec_rt_fetch (int ,TYPE_11__*) ;
 int init_returning_filter (TYPE_7__*,int ,int ) ;
 void* intVal (scalar_t__) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int ) ;
 scalar_t__ palloc0 (int) ;
 int prepare_query_params (int *,int ,int,int *,int *,int *) ;
 int strVal (scalar_t__) ;

__attribute__((used)) static void
postgresBeginDirectModify(ForeignScanState *node, int eflags)
{
 ForeignScan *fsplan = (ForeignScan *) node->ss.ps.plan;
 EState *estate = node->ss.ps.state;
 PgFdwDirectModifyState *dmstate;
 Index rtindex;
 RangeTblEntry *rte;
 Oid userid;
 ForeignTable *table;
 UserMapping *user;
 int numParams;




 if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
  return;




 dmstate = (PgFdwDirectModifyState *) palloc0(sizeof(PgFdwDirectModifyState));
 node->fdw_state = (void *) dmstate;





 rtindex = estate->es_result_relation_info->ri_RangeTableIndex;
 rte = exec_rt_fetch(rtindex, estate);
 userid = rte->checkAsUser ? rte->checkAsUser : GetUserId();


 if (fsplan->scan.scanrelid == 0)
  dmstate->rel = ExecOpenScanRelation(estate, rtindex, eflags);
 else
  dmstate->rel = node->ss.ss_currentRelation;
 table = GetForeignTable(RelationGetRelid(dmstate->rel));
 user = GetUserMapping(userid, table->serverid);





 dmstate->conn = GetConnection(user, 0);


 if (fsplan->scan.scanrelid == 0)
 {

  dmstate->resultRel = dmstate->rel;







  dmstate->rel = ((void*)0);
 }


 dmstate->num_tuples = -1;


 dmstate->query = strVal(list_nth(fsplan->fdw_private,
          FdwDirectModifyPrivateUpdateSql));
 dmstate->has_returning = intVal(list_nth(fsplan->fdw_private,
            FdwDirectModifyPrivateHasReturning));
 dmstate->retrieved_attrs = (List *) list_nth(fsplan->fdw_private,
             FdwDirectModifyPrivateRetrievedAttrs);
 dmstate->set_processed = intVal(list_nth(fsplan->fdw_private,
            FdwDirectModifyPrivateSetProcessed));


 dmstate->temp_cxt = AllocSetContextCreate(estate->es_query_cxt,
             "postgres_fdw temporary data",
             ALLOCSET_SMALL_SIZES);


 if (dmstate->has_returning)
 {
  TupleDesc tupdesc;

  if (fsplan->scan.scanrelid == 0)
   tupdesc = node->ss.ss_ScanTupleSlot->tts_tupleDescriptor;
  else
   tupdesc = RelationGetDescr(dmstate->rel);

  dmstate->attinmeta = TupleDescGetAttInMetadata(tupdesc);






  if (fsplan->scan.scanrelid == 0)
   init_returning_filter(dmstate, fsplan->fdw_scan_tlist, rtindex);
 }




 numParams = list_length(fsplan->fdw_exprs);
 dmstate->numParams = numParams;
 if (numParams > 0)
  prepare_query_params((PlanState *) node,
        fsplan->fdw_exprs,
        numParams,
        &dmstate->param_flinfo,
        &dmstate->param_exprs,
        &dmstate->param_values);
}
