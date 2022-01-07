
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WALSegmentContext ;
typedef int WALOpenSegment ;
typedef int LagTracker ;


 int InitWalSenderSlot () ;
 int MarkPostmasterChildWalSender () ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextAllocZero (int ,int) ;
 int PMSIGNAL_ADVANCE_STATE_MACHINE ;
 int RecoveryInProgress () ;
 int SendPostmasterSignal (int ) ;
 int TopMemoryContext ;
 int WALOpenSegmentInit (int *,int *,int ,int *) ;
 int am_cascading_walsender ;
 int lag_tracker ;
 int * sendCxt ;
 int * sendSeg ;
 int wal_segment_size ;

void
InitWalSender(void)
{
 am_cascading_walsender = RecoveryInProgress();


 InitWalSenderSlot();
 MarkPostmasterChildWalSender();
 SendPostmasterSignal(PMSIGNAL_ADVANCE_STATE_MACHINE);


 lag_tracker = MemoryContextAllocZero(TopMemoryContext, sizeof(LagTracker));


 sendSeg = (WALOpenSegment *)
  MemoryContextAlloc(TopMemoryContext, sizeof(WALOpenSegment));
 sendCxt = (WALSegmentContext *)
  MemoryContextAlloc(TopMemoryContext, sizeof(WALSegmentContext));
 WALOpenSegmentInit(sendSeg, sendCxt, wal_segment_size, ((void*)0));
}
