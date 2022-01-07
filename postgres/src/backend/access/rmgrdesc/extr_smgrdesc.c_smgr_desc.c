
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int blkno; int rnode; } ;
typedef TYPE_1__ xl_smgr_truncate ;
struct TYPE_4__ {int forkNum; int rnode; } ;
typedef TYPE_2__ xl_smgr_create ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;
typedef int StringInfo ;


 int MAIN_FORKNUM ;
 scalar_t__ XLOG_SMGR_CREATE ;
 scalar_t__ XLOG_SMGR_TRUNCATE ;
 scalar_t__ XLR_INFO_MASK ;
 char* XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int appendStringInfo (int ,char*,char*,int ,int ) ;
 int appendStringInfoString (int ,char*) ;
 int pfree (char*) ;
 char* relpathperm (int ,int ) ;

void
smgr_desc(StringInfo buf, XLogReaderState *record)
{
 char *rec = XLogRecGetData(record);
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info == XLOG_SMGR_CREATE)
 {
  xl_smgr_create *xlrec = (xl_smgr_create *) rec;
  char *path = relpathperm(xlrec->rnode, xlrec->forkNum);

  appendStringInfoString(buf, path);
  pfree(path);
 }
 else if (info == XLOG_SMGR_TRUNCATE)
 {
  xl_smgr_truncate *xlrec = (xl_smgr_truncate *) rec;
  char *path = relpathperm(xlrec->rnode, MAIN_FORKNUM);

  appendStringInfo(buf, "%s to %u blocks flags %d", path,
       xlrec->blkno, xlrec->flags);
  pfree(path);
 }
}
