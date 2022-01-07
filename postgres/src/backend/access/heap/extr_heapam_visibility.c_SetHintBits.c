
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
typedef scalar_t__ XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;
typedef int Buffer ;


 scalar_t__ BufferGetLSNAtomic (int ) ;
 scalar_t__ BufferIsPermanent (int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 scalar_t__ TransactionIdGetCommitLSN (int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ XLogNeedsFlush (scalar_t__) ;

__attribute__((used)) static inline void
SetHintBits(HeapTupleHeader tuple, Buffer buffer,
   uint16 infomask, TransactionId xid)
{
 if (TransactionIdIsValid(xid))
 {

  XLogRecPtr commitLSN = TransactionIdGetCommitLSN(xid);

  if (BufferIsPermanent(buffer) && XLogNeedsFlush(commitLSN) &&
   BufferGetLSNAtomic(buffer) < commitLSN)
  {

   return;
  }
 }

 tuple->t_infomask |= infomask;
 MarkBufferDirtyHint(buffer, 1);
}
