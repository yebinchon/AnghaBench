
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TableScanDesc ;
struct TYPE_15__ {int * ecxt_scantuple; } ;
struct TYPE_14__ {int conname; int oid; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {scalar_t__ relkind; } ;
typedef int Snapshot ;
typedef TYPE_2__* Relation ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;
typedef int ExprState ;
typedef TYPE_4__ ExprContext ;
typedef int Expr ;
typedef int EState ;
typedef int Datum ;


 int Anum_pg_constraint_conbin ;
 int CONSTROID ;
 int * CreateExecutorState () ;
 int ERRCODE_CHECK_VIOLATION ;
 int ERROR ;
 int ExecCheck (int *,TYPE_4__*) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int * ExecPrepareExpr (int *,int *) ;
 int ForwardScanDirection ;
 int FreeExecutorState (int *) ;
 scalar_t__ GETSTRUCT (int ) ;
 int GetLatestSnapshot () ;
 TYPE_4__* GetPerTupleExprContext (int *) ;
 int GetPerTupleMemoryContext (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int NameStr (int ) ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int RegisterSnapshot (int ) ;
 int ResetExprContext (TYPE_4__*) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 int UnregisterSnapshot (int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int errtableconstraint (TYPE_2__*,int ) ;
 scalar_t__ stringToNode (char*) ;
 int table_beginscan (TYPE_2__*,int ,int ,int *) ;
 int table_endscan (int ) ;
 scalar_t__ table_scan_getnextslot (int ,int ,int *) ;
 int * table_slot_create (TYPE_2__*,int *) ;

__attribute__((used)) static void
validateCheckConstraint(Relation rel, HeapTuple constrtup)
{
 EState *estate;
 Datum val;
 char *conbin;
 Expr *origexpr;
 ExprState *exprstate;
 TableScanDesc scan;
 ExprContext *econtext;
 MemoryContext oldcxt;
 TupleTableSlot *slot;
 Form_pg_constraint constrForm;
 bool isnull;
 Snapshot snapshot;





 if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE ||
  rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  return;

 constrForm = (Form_pg_constraint) GETSTRUCT(constrtup);

 estate = CreateExecutorState();






 val = SysCacheGetAttr(CONSTROID, constrtup, Anum_pg_constraint_conbin,
        &isnull);
 if (isnull)
  elog(ERROR, "null conbin for constraint %u",
    constrForm->oid);
 conbin = TextDatumGetCString(val);
 origexpr = (Expr *) stringToNode(conbin);
 exprstate = ExecPrepareExpr(origexpr, estate);

 econtext = GetPerTupleExprContext(estate);
 slot = table_slot_create(rel, ((void*)0));
 econtext->ecxt_scantuple = slot;

 snapshot = RegisterSnapshot(GetLatestSnapshot());
 scan = table_beginscan(rel, snapshot, 0, ((void*)0));





 oldcxt = MemoryContextSwitchTo(GetPerTupleMemoryContext(estate));

 while (table_scan_getnextslot(scan, ForwardScanDirection, slot))
 {
  if (!ExecCheck(exprstate, econtext))
   ereport(ERROR,
     (errcode(ERRCODE_CHECK_VIOLATION),
      errmsg("check constraint \"%s\" is violated by some row",
       NameStr(constrForm->conname)),
      errtableconstraint(rel, NameStr(constrForm->conname))));

  ResetExprContext(econtext);
 }

 MemoryContextSwitchTo(oldcxt);
 table_endscan(scan);
 UnregisterSnapshot(snapshot);
 ExecDropSingleTupleTableSlot(slot);
 FreeExecutorState(estate);
}
