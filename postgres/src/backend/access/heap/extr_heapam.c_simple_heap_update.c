
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TM_Result ;
typedef int TM_FailureData ;
typedef int Relation ;
typedef int LockTupleMode ;
typedef int ItemPointer ;
typedef int HeapTuple ;


 int ERROR ;
 int GetCurrentCommandId (int) ;
 int InvalidSnapshot ;




 int elog (int ,char*,...) ;
 int heap_update (int ,int ,int ,int ,int ,int,int *,int *) ;

void
simple_heap_update(Relation relation, ItemPointer otid, HeapTuple tup)
{
 TM_Result result;
 TM_FailureData tmfd;
 LockTupleMode lockmode;

 result = heap_update(relation, otid, tup,
       GetCurrentCommandId(1), InvalidSnapshot,
       1 ,
       &tmfd, &lockmode);
 switch (result)
 {
  case 129:

   elog(ERROR, "tuple already updated by self");
   break;

  case 130:

   break;

  case 128:
   elog(ERROR, "tuple concurrently updated");
   break;

  case 131:
   elog(ERROR, "tuple concurrently deleted");
   break;

  default:
   elog(ERROR, "unrecognized heap_update status: %u", result);
   break;
 }
}
