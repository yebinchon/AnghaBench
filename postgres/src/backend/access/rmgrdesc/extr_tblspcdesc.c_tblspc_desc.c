
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ts_id; } ;
typedef TYPE_1__ xl_tblspc_drop_rec ;
struct TYPE_4__ {int ts_path; int ts_id; } ;
typedef TYPE_2__ xl_tblspc_create_rec ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 scalar_t__ XLOG_TBLSPC_CREATE ;
 scalar_t__ XLOG_TBLSPC_DROP ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,...) ;

void
tblspc_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == XLOG_TBLSPC_CREATE)
 {
  xl_tblspc_create_rec *xlrec = (xl_tblspc_create_rec *) rec;

  appendStringInfo(buf, "%u \"%s\"", xlrec->ts_id, xlrec->ts_path);
 }
 else if (info == XLOG_TBLSPC_DROP)
 {
  xl_tblspc_drop_rec *xlrec = (xl_tblspc_drop_rec *) rec;

  appendStringInfo(buf, "%u", xlrec->ts_id);
 }
}
