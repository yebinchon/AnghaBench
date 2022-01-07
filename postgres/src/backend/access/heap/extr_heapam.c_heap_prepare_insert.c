
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef int TransactionId ;
struct TYPE_19__ {scalar_t__ t_len; int t_tableOid; TYPE_11__* t_data; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relkind; } ;
struct TYPE_16__ {int t_infomask; int t_infomask2; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* HeapTuple ;
typedef int CommandId ;


 int Assert (int) ;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERROR ;
 int HEAP2_XACT_MASK ;
 int HEAP_INSERT_FROZEN ;
 int HEAP_XACT_MASK ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HeapTupleHasExternal (TYPE_3__*) ;
 int HeapTupleHeaderSetCmin (TYPE_11__*,int ) ;
 int HeapTupleHeaderSetXmax (TYPE_11__*,int ) ;
 int HeapTupleHeaderSetXmin (TYPE_11__*,int ) ;
 int HeapTupleHeaderSetXminFrozen (TYPE_11__*) ;
 scalar_t__ IsParallelWorker () ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 int RelationGetRelid (TYPE_2__*) ;
 scalar_t__ TOAST_TUPLE_THRESHOLD ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_3__* heap_toast_insert_or_update (TYPE_2__*,TYPE_3__*,int *,int) ;

__attribute__((used)) static HeapTuple
heap_prepare_insert(Relation relation, HeapTuple tup, TransactionId xid,
     CommandId cid, int options)
{
 if (IsParallelWorker())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot insert tuples in a parallel worker")));

 tup->t_data->t_infomask &= ~(HEAP_XACT_MASK);
 tup->t_data->t_infomask2 &= ~(HEAP2_XACT_MASK);
 tup->t_data->t_infomask |= HEAP_XMAX_INVALID;
 HeapTupleHeaderSetXmin(tup->t_data, xid);
 if (options & HEAP_INSERT_FROZEN)
  HeapTupleHeaderSetXminFrozen(tup->t_data);

 HeapTupleHeaderSetCmin(tup->t_data, cid);
 HeapTupleHeaderSetXmax(tup->t_data, 0);
 tup->t_tableOid = RelationGetRelid(relation);





 if (relation->rd_rel->relkind != RELKIND_RELATION &&
  relation->rd_rel->relkind != RELKIND_MATVIEW)
 {

  Assert(!HeapTupleHasExternal(tup));
  return tup;
 }
 else if (HeapTupleHasExternal(tup) || tup->t_len > TOAST_TUPLE_THRESHOLD)
  return heap_toast_insert_or_update(relation, tup, ((void*)0), options);
 else
  return tup;
}
