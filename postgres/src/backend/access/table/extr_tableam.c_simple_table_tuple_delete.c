
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TM_Result ;
typedef int TM_FailureData ;
typedef int Snapshot ;
typedef int Relation ;
typedef int ItemPointer ;


 int ERROR ;
 int GetCurrentCommandId (int) ;
 int InvalidSnapshot ;




 int elog (int ,char*,...) ;
 int table_tuple_delete (int ,int ,int ,int ,int ,int,int *,int) ;

void
simple_table_tuple_delete(Relation rel, ItemPointer tid, Snapshot snapshot)
{
 TM_Result result;
 TM_FailureData tmfd;

 result = table_tuple_delete(rel, tid,
        GetCurrentCommandId(1),
        snapshot, InvalidSnapshot,
        1 ,
        &tmfd, 0 );

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
   elog(ERROR, "unrecognized table_tuple_delete status: %u", result);
   break;
 }
}
