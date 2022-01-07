
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char XidStatus ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {TYPE_1__* shared; } ;
struct TYPE_4__ {char** page_buffer; int * group_lsn; } ;


 int CLOG_BITS_PER_XACT ;
 char CLOG_XACT_BITMASK ;
 int CLogControlLock ;
 TYPE_2__* ClogCtl ;
 int GetLSNIndex (int,int ) ;
 int LWLockRelease (int ) ;
 int SimpleLruReadPage_ReadOnly (TYPE_2__*,int,int ) ;
 int TransactionIdToBIndex (int ) ;
 int TransactionIdToByte (int ) ;
 int TransactionIdToPage (int ) ;

XidStatus
TransactionIdGetStatus(TransactionId xid, XLogRecPtr *lsn)
{
 int pageno = TransactionIdToPage(xid);
 int byteno = TransactionIdToByte(xid);
 int bshift = TransactionIdToBIndex(xid) * CLOG_BITS_PER_XACT;
 int slotno;
 int lsnindex;
 char *byteptr;
 XidStatus status;



 slotno = SimpleLruReadPage_ReadOnly(ClogCtl, pageno, xid);
 byteptr = ClogCtl->shared->page_buffer[slotno] + byteno;

 status = (*byteptr >> bshift) & CLOG_XACT_BITMASK;

 lsnindex = GetLSNIndex(slotno, xid);
 *lsn = ClogCtl->shared->group_lsn[lsnindex];

 LWLockRelease(CLogControlLock);

 return status;
}
