
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TransactionId ;
typedef int LOCKTAG ;


 int Assert (int) ;
 int LockAcquire (int *,int ,int,int) ;
 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_SPECULATIVE_INSERTION (int ,int ,int ) ;
 int ShareLock ;
 int TransactionIdIsValid (int ) ;

void
SpeculativeInsertionWait(TransactionId xid, uint32 token)
{
 LOCKTAG tag;

 SET_LOCKTAG_SPECULATIVE_INSERTION(tag, xid, token);

 Assert(TransactionIdIsValid(xid));
 Assert(token != 0);

 (void) LockAcquire(&tag, ShareLock, 0, 0);
 LockRelease(&tag, ShareLock, 0);
}
