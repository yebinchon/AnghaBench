
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_3__ {int t_self; int t_data; } ;
typedef int TM_Result ;
typedef int Relation ;
typedef int LockTupleMode ;
typedef int ItemPointer ;
typedef TYPE_1__* HeapTuple ;


 int HeapTupleHeaderIndicatesMovedPartitions (int ) ;
 int ItemPointerEquals (int *,int ) ;
 int MultiXactIdSetOldestMember () ;
 int TM_Ok ;
 int heap_lock_updated_tuple_rec (int ,int ,int ,int ) ;

__attribute__((used)) static TM_Result
heap_lock_updated_tuple(Relation rel, HeapTuple tuple, ItemPointer ctid,
      TransactionId xid, LockTupleMode mode)
{




 if (!HeapTupleHeaderIndicatesMovedPartitions(tuple->t_data) &&
  !ItemPointerEquals(&tuple->t_self, ctid))
 {
  MultiXactIdSetOldestMember();

  return heap_lock_updated_tuple_rec(rel, ctid, xid, mode);
 }


 return TM_Ok;
}
