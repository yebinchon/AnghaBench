
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xl_xact_prepare ;
typedef int xl_xact_commit ;
struct TYPE_3__ {int xtop; } ;
typedef TYPE_1__ xl_xact_assignment ;
typedef int xl_xact_abort ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 scalar_t__ XLOG_XACT_ABORT ;
 scalar_t__ XLOG_XACT_ABORT_PREPARED ;
 scalar_t__ XLOG_XACT_ASSIGNMENT ;
 scalar_t__ XLOG_XACT_COMMIT ;
 scalar_t__ XLOG_XACT_COMMIT_PREPARED ;
 scalar_t__ XLOG_XACT_OPMASK ;
 scalar_t__ XLOG_XACT_PREPARE ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int XLogRecGetOrigin (int *) ;
 int appendStringInfo (int ,char*,int ) ;
 int xact_desc_abort (int ,scalar_t__,int *) ;
 int xact_desc_assignment (int ,TYPE_1__*) ;
 int xact_desc_commit (int ,scalar_t__,int *,int ) ;
 int xact_desc_prepare (int ,scalar_t__,int *) ;

void
xact_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & XLOG_XACT_OPMASK;

 if (info == XLOG_XACT_COMMIT || info == XLOG_XACT_COMMIT_PREPARED)
 {
  xl_xact_commit *xlrec = (xl_xact_commit *) rec;

  xact_desc_commit(buf, XLogRecGetInfo(record), xlrec,
       XLogRecGetOrigin(record));
 }
 else if (info == XLOG_XACT_ABORT || info == XLOG_XACT_ABORT_PREPARED)
 {
  xl_xact_abort *xlrec = (xl_xact_abort *) rec;

  xact_desc_abort(buf, XLogRecGetInfo(record), xlrec);
 }
 else if (info == XLOG_XACT_PREPARE)
 {
  xl_xact_prepare *xlrec = (xl_xact_prepare *) rec;

  xact_desc_prepare(buf, XLogRecGetInfo(record), xlrec);
 }
 else if (info == XLOG_XACT_ASSIGNMENT)
 {
  xl_xact_assignment *xlrec = (xl_xact_assignment *) rec;






  appendStringInfo(buf, "xtop %u: ", xlrec->xtop);
  xact_desc_assignment(buf, xlrec);
 }
}
