
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xl_heap_freeze_tuple ;
struct TYPE_2__ {int ntuples; int cutoff_xid; } ;
typedef TYPE_1__ xl_heap_freeze_page ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int Relation ;
typedef int Buffer ;


 int Assert (int) ;
 int REGBUF_STANDARD ;
 int RM_HEAP2_ID ;
 int RelationNeedsWAL (int ) ;
 int SizeOfHeapFreezePage ;
 int XLOG_HEAP2_FREEZE_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int ) ;

XLogRecPtr
log_heap_freeze(Relation reln, Buffer buffer, TransactionId cutoff_xid,
    xl_heap_freeze_tuple *tuples, int ntuples)
{
 xl_heap_freeze_page xlrec;
 XLogRecPtr recptr;


 Assert(RelationNeedsWAL(reln));

 Assert(ntuples > 0);

 xlrec.cutoff_xid = cutoff_xid;
 xlrec.ntuples = ntuples;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfHeapFreezePage);






 XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);
 XLogRegisterBufData(0, (char *) tuples,
      ntuples * sizeof(xl_heap_freeze_tuple));

 recptr = XLogInsert(RM_HEAP2_ID, XLOG_HEAP2_FREEZE_PAGE);

 return recptr;
}
