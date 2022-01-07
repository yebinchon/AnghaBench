
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ts_id; } ;
typedef TYPE_1__ xl_tblspc_drop_rec ;
struct TYPE_4__ {char* ts_path; int ts_id; } ;
typedef TYPE_2__ xl_tblspc_create_rec ;
typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;


 int Assert (int) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int LOG ;
 int PANIC ;
 int ResolveRecoveryConflictWithTablespace (int ) ;
 scalar_t__ XLOG_TBLSPC_CREATE ;
 scalar_t__ XLOG_TBLSPC_DROP ;
 scalar_t__ XLR_INFO_MASK ;
 scalar_t__ XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int XLogRecHasAnyBlockRefs (int *) ;
 int create_tablespace_directories (char*,int ) ;
 int destroy_tablespace_directories (int ,int) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;

void
tblspc_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;


 Assert(!XLogRecHasAnyBlockRefs(record));

 if (info == XLOG_TBLSPC_CREATE)
 {
  xl_tblspc_create_rec *xlrec = (xl_tblspc_create_rec *) XLogRecGetData(record);
  char *location = xlrec->ts_path;

  create_tablespace_directories(location, xlrec->ts_id);
 }
 else if (info == XLOG_TBLSPC_DROP)
 {
  xl_tblspc_drop_rec *xlrec = (xl_tblspc_drop_rec *) XLogRecGetData(record);
  if (!destroy_tablespace_directories(xlrec->ts_id, 1))
  {
   ResolveRecoveryConflictWithTablespace(xlrec->ts_id);
   if (!destroy_tablespace_directories(xlrec->ts_id, 1))
    ereport(LOG,
      (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("directories for tablespace %u could not be removed",
        xlrec->ts_id),
       errhint("You can remove the directories manually if necessary.")));
  }
 }
 else
  elog(PANIC, "tblspc_redo: unknown op code %u", info);
}
