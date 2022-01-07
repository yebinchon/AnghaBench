
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int cutoff_xid; } ;
typedef TYPE_1__ xl_heap_visible ;
typedef int uint8 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int RelFileNode ;
typedef int Buffer ;


 int Assert (int ) ;
 int BufferIsValid (int ) ;
 int REGBUF_NO_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_HEAP2_ID ;
 int SizeOfHeapVisible ;
 int XLOG_HEAP2_VISIBLE ;
 int XLogBeginInsert () ;
 int XLogHintBitIsNeeded () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;

XLogRecPtr
log_heap_visible(RelFileNode rnode, Buffer heap_buffer, Buffer vm_buffer,
     TransactionId cutoff_xid, uint8 vmflags)
{
 xl_heap_visible xlrec;
 XLogRecPtr recptr;
 uint8 flags;

 Assert(BufferIsValid(heap_buffer));
 Assert(BufferIsValid(vm_buffer));

 xlrec.cutoff_xid = cutoff_xid;
 xlrec.flags = vmflags;
 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfHeapVisible);

 XLogRegisterBuffer(0, vm_buffer, 0);

 flags = REGBUF_STANDARD;
 if (!XLogHintBitIsNeeded())
  flags |= REGBUF_NO_IMAGE;
 XLogRegisterBuffer(1, heap_buffer, flags);

 recptr = XLogInsert(RM_HEAP2_ID, XLOG_HEAP2_VISIBLE);

 return recptr;
}
