
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogSegNo ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
typedef int ReplicationSlot ;


 int MAXPGPATH ;
 TYPE_2__* MyReplicationSlot ;
 char* NameStr (int ) ;
 int XLogSegNoOffsetToRecPtr (int ,int ,int ,int) ;
 int snprintf (char*,int ,char*,char*,int,int,int) ;
 int wal_segment_size ;

__attribute__((used)) static void
ReorderBufferSerializedPath(char *path, ReplicationSlot *slot, TransactionId xid,
       XLogSegNo segno)
{
 XLogRecPtr recptr;

 XLogSegNoOffsetToRecPtr(segno, 0, wal_segment_size, recptr);

 snprintf(path, MAXPGPATH, "pg_replslot/%s/xid-%u-lsn-%X-%X.spill",
    NameStr(MyReplicationSlot->data.name),
    xid,
    (uint32) (recptr >> 32), (uint32) recptr);
}
