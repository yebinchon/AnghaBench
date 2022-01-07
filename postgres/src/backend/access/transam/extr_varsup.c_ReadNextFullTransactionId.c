
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nextFullXid; } ;
typedef int FullTransactionId ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_1__* ShmemVariableCache ;
 int XidGenLock ;

FullTransactionId
ReadNextFullTransactionId(void)
{
 FullTransactionId fullXid;

 LWLockAcquire(XidGenLock, LW_SHARED);
 fullXid = ShmemVariableCache->nextFullXid;
 LWLockRelease(XidGenLock);

 return fullXid;
}
