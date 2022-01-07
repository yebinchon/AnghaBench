
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int UserMapping ;
struct TYPE_17__ {int scanrelid; } ;
struct TYPE_24__ {int fdw_exprs; TYPE_2__ scan; int fdw_private; int fs_relids; } ;
struct TYPE_16__ {TYPE_10__* state; scalar_t__ plan; } ;
struct TYPE_19__ {TYPE_3__* ss_ScanTupleSlot; int * ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_23__ {TYPE_4__ ss; void* fdw_state; } ;
struct TYPE_22__ {int serverid; } ;
struct TYPE_21__ {int cursor_exists; int numParams; int param_values; int param_exprs; int param_flinfo; int tupdesc; int attinmeta; int * rel; void* temp_cxt; void* batch_cxt; int fetch_size; int * retrieved_attrs; int query; int conn; int cursor_number; } ;
struct TYPE_20__ {int relid; scalar_t__ checkAsUser; } ;
struct TYPE_18__ {int tts_tupleDescriptor; } ;
struct TYPE_15__ {int es_query_cxt; } ;
typedef TYPE_5__ RangeTblEntry ;
typedef int PlanState ;
typedef TYPE_6__ PgFdwScanState ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef TYPE_7__ ForeignTable ;
typedef TYPE_8__ ForeignScanState ;
typedef TYPE_9__ ForeignScan ;
typedef TYPE_10__ EState ;


 int ALLOCSET_DEFAULT_SIZES ;
 int ALLOCSET_SMALL_SIZES ;
 void* AllocSetContextCreate (int ,char*,int ) ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int FdwScanPrivateFetchSize ;
 int FdwScanPrivateRetrievedAttrs ;
 int FdwScanPrivateSelectSql ;
 int GetConnection (int *,int) ;
 int GetCursorNumber (int ) ;
 TYPE_7__* GetForeignTable (int ) ;
 scalar_t__ GetUserId () ;
 int * GetUserMapping (scalar_t__,int ) ;
 int RelationGetDescr (int *) ;
 int TupleDescGetAttInMetadata (int ) ;
 int bms_next_member (int ,int) ;
 TYPE_5__* exec_rt_fetch (int,TYPE_10__*) ;
 int intVal (scalar_t__) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int ) ;
 scalar_t__ palloc0 (int) ;
 int prepare_query_params (int *,int ,int,int *,int *,int *) ;
 int strVal (scalar_t__) ;

__attribute__((used)) static void
postgresBeginForeignScan(ForeignScanState *node, int eflags)
{
 ForeignScan *fsplan = (ForeignScan *) node->ss.ps.plan;
 EState *estate = node->ss.ps.state;
 PgFdwScanState *fsstate;
 RangeTblEntry *rte;
 Oid userid;
 ForeignTable *table;
 UserMapping *user;
 int rtindex;
 int numParams;




 if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
  return;




 fsstate = (PgFdwScanState *) palloc0(sizeof(PgFdwScanState));
 node->fdw_state = (void *) fsstate;







 if (fsplan->scan.scanrelid > 0)
  rtindex = fsplan->scan.scanrelid;
 else
  rtindex = bms_next_member(fsplan->fs_relids, -1);
 rte = exec_rt_fetch(rtindex, estate);
 userid = rte->checkAsUser ? rte->checkAsUser : GetUserId();


 table = GetForeignTable(rte->relid);
 user = GetUserMapping(userid, table->serverid);





 fsstate->conn = GetConnection(user, 0);


 fsstate->cursor_number = GetCursorNumber(fsstate->conn);
 fsstate->cursor_exists = 0;


 fsstate->query = strVal(list_nth(fsplan->fdw_private,
          FdwScanPrivateSelectSql));
 fsstate->retrieved_attrs = (List *) list_nth(fsplan->fdw_private,
             FdwScanPrivateRetrievedAttrs);
 fsstate->fetch_size = intVal(list_nth(fsplan->fdw_private,
            FdwScanPrivateFetchSize));


 fsstate->batch_cxt = AllocSetContextCreate(estate->es_query_cxt,
              "postgres_fdw tuple data",
              ALLOCSET_DEFAULT_SIZES);
 fsstate->temp_cxt = AllocSetContextCreate(estate->es_query_cxt,
             "postgres_fdw temporary data",
             ALLOCSET_SMALL_SIZES);





 if (fsplan->scan.scanrelid > 0)
 {
  fsstate->rel = node->ss.ss_currentRelation;
  fsstate->tupdesc = RelationGetDescr(fsstate->rel);
 }
 else
 {
  fsstate->rel = ((void*)0);
  fsstate->tupdesc = node->ss.ss_ScanTupleSlot->tts_tupleDescriptor;
 }

 fsstate->attinmeta = TupleDescGetAttInMetadata(fsstate->tupdesc);




 numParams = list_length(fsplan->fdw_exprs);
 fsstate->numParams = numParams;
 if (numParams > 0)
  prepare_query_params((PlanState *) node,
        fsplan->fdw_exprs,
        numParams,
        &fsstate->param_flinfo,
        &fsstate->param_exprs,
        &fsstate->param_values);
}
