
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int LOCKTAG ;


 int ExclusiveLock ;
 int LockAcquire (int *,int ,int,int) ;
 int SET_LOCKTAG_TRANSACTION (int ,int ) ;

void
XactLockTableInsert(TransactionId xid)
{
 LOCKTAG tag;

 SET_LOCKTAG_TRANSACTION(tag, xid);

 (void) LockAcquire(&tag, ExclusiveLock, 0, 0);
}
