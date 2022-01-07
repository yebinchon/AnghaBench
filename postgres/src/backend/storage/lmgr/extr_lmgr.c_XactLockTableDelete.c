
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int LOCKTAG ;


 int ExclusiveLock ;
 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_TRANSACTION (int ,int ) ;

void
XactLockTableDelete(TransactionId xid)
{
 LOCKTAG tag;

 SET_LOCKTAG_TRANSACTION(tag, xid);

 LockRelease(&tag, ExclusiveLock, 0);
}
