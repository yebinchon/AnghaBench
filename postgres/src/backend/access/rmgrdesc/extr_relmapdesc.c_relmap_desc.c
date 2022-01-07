
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; int tsid; int dbid; } ;
typedef TYPE_1__ xl_relmap_update ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 scalar_t__ XLOG_RELMAP_UPDATE ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,int ,int ,int ) ;

void
relmap_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == XLOG_RELMAP_UPDATE)
 {
  xl_relmap_update *xlrec = (xl_relmap_update *) rec;

  appendStringInfo(buf, "database %u tablespace %u size %u",
       xlrec->dbid, xlrec->tsid, xlrec->nbytes);
 }
}
