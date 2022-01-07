
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int LOCKTAG ;


 int ExclusiveLock ;
 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_SPECULATIVE_INSERTION (int ,int ,int ) ;
 int speculativeInsertionToken ;

void
SpeculativeInsertionLockRelease(TransactionId xid)
{
 LOCKTAG tag;

 SET_LOCKTAG_SPECULATIVE_INSERTION(tag, xid, speculativeInsertionToken);

 LockRelease(&tag, ExclusiveLock, 0);
}
