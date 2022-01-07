
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nredirected; int ndead; int latestRemovedXid; } ;
typedef TYPE_1__ xl_heap_clean ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef int Buffer ;


 int Assert (int ) ;
 int REGBUF_STANDARD ;
 int RM_HEAP2_ID ;
 int RelationNeedsWAL (int ) ;
 int SizeOfHeapClean ;
 int XLOG_HEAP2_CLEAN ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;

XLogRecPtr
log_heap_clean(Relation reln, Buffer buffer,
      OffsetNumber *redirected, int nredirected,
      OffsetNumber *nowdead, int ndead,
      OffsetNumber *nowunused, int nunused,
      TransactionId latestRemovedXid)
{
 xl_heap_clean xlrec;
 XLogRecPtr recptr;


 Assert(RelationNeedsWAL(reln));

 xlrec.latestRemovedXid = latestRemovedXid;
 xlrec.nredirected = nredirected;
 xlrec.ndead = ndead;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfHeapClean);

 XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);
 if (nredirected > 0)
  XLogRegisterBufData(0, (char *) redirected,
       nredirected * sizeof(OffsetNumber) * 2);

 if (ndead > 0)
  XLogRegisterBufData(0, (char *) nowdead,
       ndead * sizeof(OffsetNumber));

 if (nunused > 0)
  XLogRegisterBufData(0, (char *) nowunused,
       nunused * sizeof(OffsetNumber));

 recptr = XLogInsert(RM_HEAP2_ID, XLOG_HEAP2_CLEAN);

 return recptr;
}
