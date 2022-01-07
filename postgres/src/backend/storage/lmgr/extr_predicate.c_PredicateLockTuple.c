
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int t_self; int t_data; } ;
struct TYPE_7__ {int dbNode; } ;
struct TYPE_8__ {int rd_id; TYPE_1__ rd_node; int * rd_index; } ;
typedef int Snapshot ;
typedef TYPE_2__* Relation ;
typedef int PREDICATELOCKTARGETTAG ;
typedef int * ItemPointer ;
typedef TYPE_3__* HeapTuple ;


 int HeapTupleHeaderGetXmin (int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int PredicateLockAcquire (int *) ;
 scalar_t__ PredicateLockExists (int *) ;
 int SET_PREDICATELOCKTARGETTAG_RELATION (int ,int ,int ) ;
 int SET_PREDICATELOCKTARGETTAG_TUPLE (int ,int ,int ,int ,int ) ;
 int SerializationNeededForRead (TYPE_2__*,int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;

void
PredicateLockTuple(Relation relation, HeapTuple tuple, Snapshot snapshot)
{
 PREDICATELOCKTARGETTAG tag;
 ItemPointer tid;

 if (!SerializationNeededForRead(relation, snapshot))
  return;




 if (relation->rd_index == ((void*)0))
 {

  if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetXmin(tuple->t_data)))
   return;
 }







 SET_PREDICATELOCKTARGETTAG_RELATION(tag,
          relation->rd_node.dbNode,
          relation->rd_id);
 if (PredicateLockExists(&tag))
  return;

 tid = &(tuple->t_self);
 SET_PREDICATELOCKTARGETTAG_TUPLE(tag,
          relation->rd_node.dbNode,
          relation->rd_id,
          ItemPointerGetBlockNumber(tid),
          ItemPointerGetOffsetNumber(tid));
 PredicateLockAcquire(&tag);
}
