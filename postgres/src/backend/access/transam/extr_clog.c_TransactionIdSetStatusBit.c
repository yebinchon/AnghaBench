
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char XidStatus ;
typedef scalar_t__ XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {char** page_buffer; scalar_t__* group_lsn; } ;


 int Assert (int) ;
 int CLOG_BITS_PER_XACT ;
 char CLOG_XACT_BITMASK ;
 TYPE_2__* ClogCtl ;
 int GetLSNIndex (int,int ) ;
 scalar_t__ InRecovery ;
 char TRANSACTION_STATUS_COMMITTED ;
 char TRANSACTION_STATUS_IN_PROGRESS ;
 char TRANSACTION_STATUS_SUB_COMMITTED ;
 int TransactionIdToBIndex (int ) ;
 int TransactionIdToByte (int ) ;
 int XLogRecPtrIsInvalid (scalar_t__) ;

__attribute__((used)) static void
TransactionIdSetStatusBit(TransactionId xid, XidStatus status, XLogRecPtr lsn, int slotno)
{
 int byteno = TransactionIdToByte(xid);
 int bshift = TransactionIdToBIndex(xid) * CLOG_BITS_PER_XACT;
 char *byteptr;
 char byteval;
 char curval;

 byteptr = ClogCtl->shared->page_buffer[slotno] + byteno;
 curval = (*byteptr >> bshift) & CLOG_XACT_BITMASK;







 if (InRecovery && status == TRANSACTION_STATUS_SUB_COMMITTED &&
  curval == TRANSACTION_STATUS_COMMITTED)
  return;





 Assert(curval == 0 ||
     (curval == TRANSACTION_STATUS_SUB_COMMITTED &&
   status != TRANSACTION_STATUS_IN_PROGRESS) ||
     curval == status);


 byteval = *byteptr;
 byteval &= ~(((1 << CLOG_BITS_PER_XACT) - 1) << bshift);
 byteval |= (status << bshift);
 *byteptr = byteval;
 if (!XLogRecPtrIsInvalid(lsn))
 {
  int lsnindex = GetLSNIndex(slotno, xid);

  if (ClogCtl->shared->group_lsn[lsnindex] < lsn)
   ClogCtl->shared->group_lsn[lsnindex] = lsn;
 }
}
