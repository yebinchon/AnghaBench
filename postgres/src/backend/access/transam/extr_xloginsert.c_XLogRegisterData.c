
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int len; struct TYPE_4__* next; } ;
typedef TYPE_1__ XLogRecData ;


 int Assert (int ) ;
 int ERROR ;
 int begininsert_called ;
 int elog (int ,char*) ;
 TYPE_1__* mainrdata_last ;
 int mainrdata_len ;
 scalar_t__ max_rdatas ;
 scalar_t__ num_rdatas ;
 TYPE_1__* rdatas ;

void
XLogRegisterData(char *data, int len)
{
 XLogRecData *rdata;

 Assert(begininsert_called);

 if (num_rdatas >= max_rdatas)
  elog(ERROR, "too much WAL data");
 rdata = &rdatas[num_rdatas++];

 rdata->data = data;
 rdata->len = len;






 mainrdata_last->next = rdata;
 mainrdata_last = rdata;

 mainrdata_len += len;
}
