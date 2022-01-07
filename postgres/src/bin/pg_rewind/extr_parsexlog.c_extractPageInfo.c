
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef int uint32 ;
struct TYPE_6__ {int ReadRecPtr; int max_block_id; } ;
typedef TYPE_1__ XLogReaderState ;
typedef size_t RmgrId ;
typedef int RelFileNode ;
typedef scalar_t__ ForkNumber ;
typedef int BlockNumber ;


 scalar_t__ MAIN_FORKNUM ;
 size_t RM_DBASE_ID ;
 size_t RM_SMGR_ID ;
 int * RmgrNames ;
 scalar_t__ XLOG_DBASE_CREATE ;
 scalar_t__ XLOG_DBASE_DROP ;
 scalar_t__ XLOG_SMGR_CREATE ;
 scalar_t__ XLOG_SMGR_TRUNCATE ;
 scalar_t__ XLR_INFO_MASK ;
 scalar_t__ XLR_SPECIAL_REL_UPDATE ;
 int XLogRecGetBlockTag (TYPE_1__*,int,int *,scalar_t__*,int *) ;
 scalar_t__ XLogRecGetInfo (TYPE_1__*) ;
 size_t XLogRecGetRmid (TYPE_1__*) ;
 int pg_fatal (char*,int ,int ,int ,scalar_t__) ;
 int process_block_change (scalar_t__,int ,int ) ;

__attribute__((used)) static void
extractPageInfo(XLogReaderState *record)
{
 int block_id;
 RmgrId rmid = XLogRecGetRmid(record);
 uint8 info = XLogRecGetInfo(record);
 uint8 rminfo = info & ~XLR_INFO_MASK;



 if (rmid == RM_DBASE_ID && rminfo == XLOG_DBASE_CREATE)
 {
 }
 else if (rmid == RM_DBASE_ID && rminfo == XLOG_DBASE_DROP)
 {





 }
 else if (rmid == RM_SMGR_ID && rminfo == XLOG_SMGR_CREATE)
 {






 }
 else if (rmid == RM_SMGR_ID && rminfo == XLOG_SMGR_TRUNCATE)
 {





 }
 else if (info & XLR_SPECIAL_REL_UPDATE)
 {





  pg_fatal("WAL record modifies a relation, but record type is not recognized: "
     "lsn: %X/%X, rmgr: %s, info: %02X",
     (uint32) (record->ReadRecPtr >> 32), (uint32) (record->ReadRecPtr),
     RmgrNames[rmid], info);
 }

 for (block_id = 0; block_id <= record->max_block_id; block_id++)
 {
  RelFileNode rnode;
  ForkNumber forknum;
  BlockNumber blkno;

  if (!XLogRecGetBlockTag(record, block_id, &rnode, &forknum, &blkno))
   continue;


  if (forknum != MAIN_FORKNUM)
   continue;

  process_block_change(forknum, rnode, blkno);
 }
}
