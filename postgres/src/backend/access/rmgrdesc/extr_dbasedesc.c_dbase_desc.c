
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db_id; int tablespace_id; } ;
typedef TYPE_1__ xl_dbase_drop_rec ;
struct TYPE_4__ {int db_id; int tablespace_id; int src_db_id; int src_tablespace_id; } ;
typedef TYPE_2__ xl_dbase_create_rec ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 scalar_t__ XLOG_DBASE_CREATE ;
 scalar_t__ XLOG_DBASE_DROP ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,int ,...) ;

void
dbase_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == XLOG_DBASE_CREATE)
 {
  xl_dbase_create_rec *xlrec = (xl_dbase_create_rec *) rec;

  appendStringInfo(buf, "copy dir %u/%u to %u/%u",
       xlrec->src_tablespace_id, xlrec->src_db_id,
       xlrec->tablespace_id, xlrec->db_id);
 }
 else if (info == XLOG_DBASE_DROP)
 {
  xl_dbase_drop_rec *xlrec = (xl_dbase_drop_rec *) rec;

  appendStringInfo(buf, "dir %u/%u",
       xlrec->tablespace_id, xlrec->db_id);
 }
}
