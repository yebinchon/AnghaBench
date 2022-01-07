
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nlocks; TYPE_1__* locks; } ;
typedef TYPE_2__ xl_standby_locks ;
typedef int xl_running_xacts ;
struct TYPE_6__ {int relcacheInitFileInval; int tsId; int dbId; int msgs; int nmsgs; } ;
typedef TYPE_3__ xl_invalidations ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
struct TYPE_4__ {int relOid; int dbOid; int xid; } ;
typedef int StringInfo ;


 scalar_t__ XLOG_INVALIDATIONS ;
 scalar_t__ XLOG_RUNNING_XACTS ;
 scalar_t__ XLOG_STANDBY_LOCK ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,int ,int ) ;
 int standby_desc_invalidations (int ,int ,int ,int ,int ,int ) ;
 int standby_desc_running_xacts (int ,int *) ;

void
standby_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == XLOG_STANDBY_LOCK)
 {
  xl_standby_locks *xlrec = (xl_standby_locks *) rec;
  int i;

  for (i = 0; i < xlrec->nlocks; i++)
   appendStringInfo(buf, "xid %u db %u rel %u ",
        xlrec->locks[i].xid, xlrec->locks[i].dbOid,
        xlrec->locks[i].relOid);
 }
 else if (info == XLOG_RUNNING_XACTS)
 {
  xl_running_xacts *xlrec = (xl_running_xacts *) rec;

  standby_desc_running_xacts(buf, xlrec);
 }
 else if (info == XLOG_INVALIDATIONS)
 {
  xl_invalidations *xlrec = (xl_invalidations *) rec;

  standby_desc_invalidations(buf, xlrec->nmsgs, xlrec->msgs,
           xlrec->dbId, xlrec->tsId,
           xlrec->relcacheInitFileInval);
 }
}
