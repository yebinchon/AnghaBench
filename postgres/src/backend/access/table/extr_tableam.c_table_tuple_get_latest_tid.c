
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* TableScanDesc ;
struct TYPE_9__ {int (* tuple_get_latest_tid ) (TYPE_1__*,int ) ;int (* tuple_tid_valid ) (TYPE_1__*,int ) ;} ;
typedef TYPE_2__ TableAmRoutine ;
struct TYPE_10__ {TYPE_2__* rd_tableam; } ;
struct TYPE_8__ {TYPE_3__* rs_rd; } ;
typedef TYPE_3__* Relation ;
typedef int ItemPointer ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ItemPointerGetBlockNumberNoCheck (int ) ;
 int ItemPointerGetOffsetNumberNoCheck (int ) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,int ) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;

void
table_tuple_get_latest_tid(TableScanDesc scan, ItemPointer tid)
{
 Relation rel = scan->rs_rd;
 const TableAmRoutine *tableam = rel->rd_tableam;





 if (!tableam->tuple_tid_valid(scan, tid))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("tid (%u, %u) is not valid for relation \"%s\"",
      ItemPointerGetBlockNumberNoCheck(tid),
      ItemPointerGetOffsetNumberNoCheck(tid),
      RelationGetRelationName(rel))));

 tableam->tuple_get_latest_tid(scan, tid);
}
