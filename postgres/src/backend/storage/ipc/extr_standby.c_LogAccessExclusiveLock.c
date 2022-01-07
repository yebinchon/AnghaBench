
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* relOid; void* dbOid; int xid; } ;
typedef TYPE_1__ xl_standby_lock ;
typedef void* Oid ;


 int GetCurrentTransactionId () ;
 int LogAccessExclusiveLocks (int,TYPE_1__*) ;
 int MyXactFlags ;
 int XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK ;

void
LogAccessExclusiveLock(Oid dbOid, Oid relOid)
{
 xl_standby_lock xlrec;

 xlrec.xid = GetCurrentTransactionId();

 xlrec.dbOid = dbOid;
 xlrec.relOid = relOid;

 LogAccessExclusiveLocks(1, &xlrec);
 MyXactFlags |= XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK;
}
