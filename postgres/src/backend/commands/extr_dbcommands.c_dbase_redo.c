
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db_id; int tablespace_id; } ;
typedef TYPE_1__ xl_dbase_drop_rec ;
struct TYPE_4__ {int src_db_id; int tablespace_id; int db_id; int src_tablespace_id; } ;
typedef TYPE_2__ xl_dbase_create_rec ;
typedef scalar_t__ uint8 ;
struct stat {int st_mode; } ;
typedef int XLogReaderState ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 int DatabaseRelationId ;
 int DropDatabaseBuffers (int ) ;
 int FlushDatabaseBuffers (int ) ;
 int ForgetDatabaseSyncRequests (int ) ;
 char* GetDatabasePath (int ,int ) ;
 scalar_t__ InHotStandby ;
 int LockSharedObjectForSession (int ,int ,int ,int ) ;
 int PANIC ;
 int ReplicationSlotsDropDBSlots (int ) ;
 int ResolveRecoveryConflictWithDatabase (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int UnlockSharedObjectForSession (int ,int ,int ,int ) ;
 int WARNING ;
 scalar_t__ XLOG_DBASE_CREATE ;
 scalar_t__ XLOG_DBASE_DROP ;
 scalar_t__ XLR_INFO_MASK ;
 int XLogDropDatabase (int ) ;
 scalar_t__ XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int XLogRecHasAnyBlockRefs (int *) ;
 int copydir (char*,char*,int) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int rmtree (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;

void
dbase_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;


 Assert(!XLogRecHasAnyBlockRefs(record));

 if (info == XLOG_DBASE_CREATE)
 {
  xl_dbase_create_rec *xlrec = (xl_dbase_create_rec *) XLogRecGetData(record);
  char *src_path;
  char *dst_path;
  struct stat st;

  src_path = GetDatabasePath(xlrec->src_db_id, xlrec->src_tablespace_id);
  dst_path = GetDatabasePath(xlrec->db_id, xlrec->tablespace_id);






  if (stat(dst_path, &st) == 0 && S_ISDIR(st.st_mode))
  {
   if (!rmtree(dst_path, 1))

    ereport(WARNING,
      (errmsg("some useless files may be left behind in old database directory \"%s\"",
        dst_path)));
  }





  FlushDatabaseBuffers(xlrec->src_db_id);






  copydir(src_path, dst_path, 0);
 }
 else if (info == XLOG_DBASE_DROP)
 {
  xl_dbase_drop_rec *xlrec = (xl_dbase_drop_rec *) XLogRecGetData(record);
  char *dst_path;

  dst_path = GetDatabasePath(xlrec->db_id, xlrec->tablespace_id);

  if (InHotStandby)
  {
   LockSharedObjectForSession(DatabaseRelationId, xlrec->db_id, 0, AccessExclusiveLock);
   ResolveRecoveryConflictWithDatabase(xlrec->db_id);
  }


  ReplicationSlotsDropDBSlots(xlrec->db_id);


  DropDatabaseBuffers(xlrec->db_id);


  ForgetDatabaseSyncRequests(xlrec->db_id);


  XLogDropDatabase(xlrec->db_id);


  if (!rmtree(dst_path, 1))
   ereport(WARNING,
     (errmsg("some useless files may be left behind in old database directory \"%s\"",
       dst_path)));

  if (InHotStandby)
  {







   UnlockSharedObjectForSession(DatabaseRelationId, xlrec->db_id, 0, AccessExclusiveLock);
  }
 }
 else
  elog(PANIC, "dbase_redo: unknown op code %u", info);
}
