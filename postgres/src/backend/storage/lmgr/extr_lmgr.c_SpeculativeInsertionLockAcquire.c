
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TransactionId ;
typedef int LOCKTAG ;


 int ExclusiveLock ;
 int LockAcquire (int *,int ,int,int) ;
 int SET_LOCKTAG_SPECULATIVE_INSERTION (int ,int ,int) ;
 int speculativeInsertionToken ;

uint32
SpeculativeInsertionLockAcquire(TransactionId xid)
{
 LOCKTAG tag;

 speculativeInsertionToken++;




 if (speculativeInsertionToken == 0)
  speculativeInsertionToken = 1;

 SET_LOCKTAG_SPECULATIVE_INSERTION(tag, xid, speculativeInsertionToken);

 (void) LockAcquire(&tag, ExclusiveLock, 0, 0);

 return speculativeInsertionToken;
}
