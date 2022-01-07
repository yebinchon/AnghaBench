
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8 ;
typedef scalar_t__ uint32 ;
typedef int XLogReaderState ;
struct TYPE_7__ {TYPE_2__** record_stats; TYPE_1__* rmgr_stats; int count; } ;
typedef TYPE_3__ XLogDumpStats ;
typedef int XLogDumpConfig ;
struct TYPE_6__ {int fpi_len; int rec_len; int count; } ;
struct TYPE_5__ {int fpi_len; int rec_len; int count; } ;
typedef size_t RmgrId ;


 int XLogDumpRecordLen (int *,scalar_t__*,scalar_t__*) ;
 int XLogRecGetInfo (int *) ;
 size_t XLogRecGetRmid (int *) ;

__attribute__((used)) static void
XLogDumpCountRecord(XLogDumpConfig *config, XLogDumpStats *stats,
     XLogReaderState *record)
{
 RmgrId rmid;
 uint8 recid;
 uint32 rec_len;
 uint32 fpi_len;

 stats->count++;

 rmid = XLogRecGetRmid(record);

 XLogDumpRecordLen(record, &rec_len, &fpi_len);



 stats->rmgr_stats[rmid].count++;
 stats->rmgr_stats[rmid].rec_len += rec_len;
 stats->rmgr_stats[rmid].fpi_len += fpi_len;
 recid = XLogRecGetInfo(record) >> 4;

 stats->record_stats[rmid][recid].count++;
 stats->record_stats[rmid][recid].rec_len += rec_len;
 stats->record_stats[rmid][recid].fpi_len += fpi_len;
}
