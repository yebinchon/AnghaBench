
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogSegNo ;
struct TYPE_3__ {scalar_t__ first_lsn; scalar_t__ final_lsn; int xid; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int Assert (int) ;
 scalar_t__ ENOENT ;
 int ERROR ;
 scalar_t__ InvalidXLogRecPtr ;
 int MAXPGPATH ;
 int MyReplicationSlot ;
 int ReorderBufferSerializedPath (char*,int ,int ,scalar_t__) ;
 int XLByteToSeg (scalar_t__,scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ unlink (char*) ;
 int wal_segment_size ;

__attribute__((used)) static void
ReorderBufferRestoreCleanup(ReorderBuffer *rb, ReorderBufferTXN *txn)
{
 XLogSegNo first;
 XLogSegNo cur;
 XLogSegNo last;

 Assert(txn->first_lsn != InvalidXLogRecPtr);
 Assert(txn->final_lsn != InvalidXLogRecPtr);

 XLByteToSeg(txn->first_lsn, first, wal_segment_size);
 XLByteToSeg(txn->final_lsn, last, wal_segment_size);


 for (cur = first; cur <= last; cur++)
 {
  char path[MAXPGPATH];

  ReorderBufferSerializedPath(path, MyReplicationSlot, txn->xid, cur);
  if (unlink(path) != 0 && errno != ENOENT)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not remove file \"%s\": %m", path)));
 }
}
