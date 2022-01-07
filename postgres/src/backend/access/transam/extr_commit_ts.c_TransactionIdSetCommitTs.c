
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_7__ {TYPE_1__* shared; } ;
struct TYPE_6__ {int nodeid; int time; } ;
struct TYPE_5__ {scalar_t__* page_buffer; } ;
typedef int RepOriginId ;
typedef TYPE_2__ CommitTimestampEntry ;


 int Assert (int ) ;
 TYPE_4__* CommitTsCtl ;
 int SizeOfCommitTimestampEntry ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdToCTsEntry (int ) ;
 int memcpy (scalar_t__,TYPE_2__*,int) ;

__attribute__((used)) static void
TransactionIdSetCommitTs(TransactionId xid, TimestampTz ts,
       RepOriginId nodeid, int slotno)
{
 int entryno = TransactionIdToCTsEntry(xid);
 CommitTimestampEntry entry;

 Assert(TransactionIdIsNormal(xid));

 entry.time = ts;
 entry.nodeid = nodeid;

 memcpy(CommitTsCtl->shared->page_buffer[slotno] +
     SizeOfCommitTimestampEntry * entryno,
     &entry, SizeOfCommitTimestampEntry);
}
