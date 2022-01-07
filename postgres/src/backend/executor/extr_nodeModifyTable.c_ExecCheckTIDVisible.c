
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int ri_RelationDesc; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int Relation ;
typedef int ItemPointer ;
typedef int EState ;


 int ERROR ;
 int ExecCheckTupleVisible (int *,int ,int *) ;
 int ExecClearTuple (int *) ;
 int IsolationUsesXactSnapshot () ;
 int SnapshotAny ;
 int elog (int ,char*) ;
 int table_tuple_fetch_row_version (int ,int ,int ,int *) ;

__attribute__((used)) static void
ExecCheckTIDVisible(EState *estate,
     ResultRelInfo *relinfo,
     ItemPointer tid,
     TupleTableSlot *tempSlot)
{
 Relation rel = relinfo->ri_RelationDesc;


 if (!IsolationUsesXactSnapshot())
  return;

 if (!table_tuple_fetch_row_version(rel, tid, SnapshotAny, tempSlot))
  elog(ERROR, "failed to fetch conflicting tuple for ON CONFLICT");
 ExecCheckTupleVisible(estate, rel, tempSlot);
 ExecClearTuple(tempSlot);
}
