
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {int * origslot; int recheckestate; TYPE_4__** relsubs_rowmark; } ;
struct TYPE_15__ {int wholeAttNo; int ctidAttNo; int toidAttNo; TYPE_3__* rowmark; } ;
struct TYPE_14__ {scalar_t__ markType; scalar_t__ rti; scalar_t__ prti; scalar_t__ relid; TYPE_6__* relation; } ;
struct TYPE_13__ {int (* RefetchForeignRow ) (int ,TYPE_3__*,int ,int *,int*) ;} ;
struct TYPE_12__ {scalar_t__ relkind; } ;
typedef scalar_t__ Oid ;
typedef int ItemPointer ;
typedef int Index ;
typedef TYPE_2__ FdwRoutine ;
typedef TYPE_3__ ExecRowMark ;
typedef TYPE_4__ ExecAuxRowMark ;
typedef TYPE_5__ EPQState ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetObjectId (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ExecGetJunkAttribute (int *,int ,int*) ;
 int ExecStoreHeapTupleDatum (int ,int *) ;
 TYPE_2__* GetFdwRoutineForRelation (TYPE_6__*,int) ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ ROW_MARK_COPY ;
 scalar_t__ ROW_MARK_REFERENCE ;
 int RelationGetRelationName (TYPE_6__*) ;
 scalar_t__ RowMarkRequiresRowShareLock (scalar_t__) ;
 int SnapshotAny ;
 scalar_t__ TupIsNull (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int stub1 (int ,TYPE_3__*,int ,int *,int*) ;
 int table_tuple_fetch_row_version (TYPE_6__*,int ,int ,int *) ;

bool
EvalPlanQualFetchRowMark(EPQState *epqstate, Index rti, TupleTableSlot *slot)
{
 ExecAuxRowMark *earm = epqstate->relsubs_rowmark[rti - 1];
 ExecRowMark *erm = earm->rowmark;
 Datum datum;
 bool isNull;

 Assert(earm != ((void*)0));
 Assert(epqstate->origslot != ((void*)0));

 if (RowMarkRequiresRowShareLock(erm->markType))
  elog(ERROR, "EvalPlanQual doesn't support locking rowmarks");


 if (erm->rti != erm->prti)
 {
  Oid tableoid;

  datum = ExecGetJunkAttribute(epqstate->origslot,
          earm->toidAttNo,
          &isNull);

  if (isNull)
   return 0;

  tableoid = DatumGetObjectId(datum);

  Assert(OidIsValid(erm->relid));
  if (tableoid != erm->relid)
  {

   return 0;
  }
 }

 if (erm->markType == ROW_MARK_REFERENCE)
 {
  Assert(erm->relation != ((void*)0));


  datum = ExecGetJunkAttribute(epqstate->origslot,
          earm->ctidAttNo,
          &isNull);

  if (isNull)
   return 0;


  if (erm->relation->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
  {
   FdwRoutine *fdwroutine;
   bool updated = 0;

   fdwroutine = GetFdwRoutineForRelation(erm->relation, 0);

   if (fdwroutine->RefetchForeignRow == ((void*)0))
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot lock rows in foreign table \"%s\"",
        RelationGetRelationName(erm->relation))));

   fdwroutine->RefetchForeignRow(epqstate->recheckestate,
            erm,
            datum,
            slot,
            &updated);
   if (TupIsNull(slot))
    elog(ERROR, "failed to fetch tuple for EvalPlanQual recheck");






   return 1;
  }
  else
  {

   if (!table_tuple_fetch_row_version(erm->relation,
              (ItemPointer) DatumGetPointer(datum),
              SnapshotAny, slot))
    elog(ERROR, "failed to fetch tuple for EvalPlanQual recheck");
   return 1;
  }
 }
 else
 {
  Assert(erm->markType == ROW_MARK_COPY);


  datum = ExecGetJunkAttribute(epqstate->origslot,
          earm->wholeAttNo,
          &isNull);

  if (isNull)
   return 0;

  ExecStoreHeapTupleDatum(datum, slot);
  return 1;
 }
}
