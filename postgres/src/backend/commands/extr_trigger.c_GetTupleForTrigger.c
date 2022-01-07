
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_9__ {int es_output_cid; int es_snapshot; } ;
struct TYPE_8__ {int ri_RangeTableIndex; int ri_RelationDesc; } ;
struct TYPE_7__ {int traversed; int cmax; } ;
typedef int TM_Result ;
typedef TYPE_1__ TM_FailureData ;
typedef TYPE_2__ ResultRelInfo ;
typedef int Relation ;
typedef int LockTupleMode ;
typedef int ItemPointer ;
typedef TYPE_3__ EState ;
typedef int EPQState ;


 int Assert (int ) ;
 int ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int * EvalPlanQual (int *,int ,int ,int *) ;
 scalar_t__ IsolationUsesXactSnapshot () ;
 int LockWaitBlock ;
 int SnapshotAny ;





 int TUPLE_LOCK_FLAG_FIND_LAST_VERSION ;
 int TupIsNull (int *) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int table_tuple_fetch_row_version (int ,int ,int ,int *) ;
 int table_tuple_lock (int ,int ,int ,int *,int ,int ,int ,int,TYPE_1__*) ;

__attribute__((used)) static bool
GetTupleForTrigger(EState *estate,
       EPQState *epqstate,
       ResultRelInfo *relinfo,
       ItemPointer tid,
       LockTupleMode lockmode,
       TupleTableSlot *oldslot,
       TupleTableSlot **epqslot)
{
 Relation relation = relinfo->ri_RelationDesc;

 if (epqslot != ((void*)0))
 {
  TM_Result test;
  TM_FailureData tmfd;
  int lockflags = 0;

  *epqslot = ((void*)0);


  Assert(epqstate != ((void*)0));




  if (!IsolationUsesXactSnapshot())
   lockflags |= TUPLE_LOCK_FLAG_FIND_LAST_VERSION;
  test = table_tuple_lock(relation, tid, estate->es_snapshot, oldslot,
        estate->es_output_cid,
        lockmode, LockWaitBlock,
        lockflags,
        &tmfd);

  switch (test)
  {
   case 129:
    if (tmfd.cmax != estate->es_output_cid)
     ereport(ERROR,
       (errcode(ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION),
        errmsg("tuple to be updated was already modified by an operation triggered by the current command"),
        errhint("Consider using an AFTER trigger instead of a BEFORE trigger to propagate changes to other rows.")));


    return 0;

   case 130:
    if (tmfd.traversed)
    {
     *epqslot = EvalPlanQual(epqstate,
           relation,
           relinfo->ri_RangeTableIndex,
           oldslot);





     if (TupIsNull(*epqslot))
     {
      *epqslot = ((void*)0);
      return 0;
     }
    }
    break;

   case 128:
    if (IsolationUsesXactSnapshot())
     ereport(ERROR,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("could not serialize access due to concurrent update")));
    elog(ERROR, "unexpected table_tuple_lock status: %u", test);
    break;

   case 132:
    if (IsolationUsesXactSnapshot())
     ereport(ERROR,
       (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
        errmsg("could not serialize access due to concurrent delete")));

    return 0;

   case 131:
    elog(ERROR, "attempted to lock invisible tuple");
    break;

   default:
    elog(ERROR, "unrecognized table_tuple_lock status: %u", test);
    return 0;
  }
 }
 else
 {




  if (!table_tuple_fetch_row_version(relation, tid, SnapshotAny,
             oldslot))
   elog(ERROR, "failed to fetch tuple for trigger");
 }

 return 1;
}
