
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int latestRemovedXid; int node; } ;
typedef TYPE_1__ xl_heap_cleanup_info ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int RelFileNode ;


 int RM_HEAP2_ID ;
 int SizeOfHeapCleanupInfo ;
 int XLOG_HEAP2_CLEANUP_INFO ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int ) ;

XLogRecPtr
log_heap_cleanup_info(RelFileNode rnode, TransactionId latestRemovedXid)
{
 xl_heap_cleanup_info xlrec;
 XLogRecPtr recptr;

 xlrec.node = rnode;
 xlrec.latestRemovedXid = latestRemovedXid;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfHeapCleanupInfo);

 recptr = XLogInsert(RM_HEAP2_ID, XLOG_HEAP2_CLEANUP_INFO);

 return recptr;
}
