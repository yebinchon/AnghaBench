
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ final_lsn; int xid; void* committime; } ;
typedef int StringInfo ;
typedef TYPE_1__ LogicalRepBeginData ;


 int ERROR ;
 scalar_t__ InvalidXLogRecPtr ;
 int elog (int ,char*) ;
 int pq_getmsgint (int ,int) ;
 void* pq_getmsgint64 (int ) ;

void
logicalrep_read_begin(StringInfo in, LogicalRepBeginData *begin_data)
{

 begin_data->final_lsn = pq_getmsgint64(in);
 if (begin_data->final_lsn == InvalidXLogRecPtr)
  elog(ERROR, "final_lsn not set in begin message");
 begin_data->committime = pq_getmsgint64(in);
 begin_data->xid = pq_getmsgint(in, 4);
}
