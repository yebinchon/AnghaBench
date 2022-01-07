
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {int xmin; } ;
struct TYPE_7__ {size_t pgprocno; scalar_t__ databaseId; } ;
struct TYPE_6__ {int xmin; } ;
typedef TYPE_1__ PGXACT ;
typedef TYPE_2__ PGPROC ;


 int Assert (scalar_t__) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 scalar_t__ MyDatabaseId ;
 TYPE_5__* MyPgXact ;
 int ProcArrayLock ;
 scalar_t__ TransactionIdIsNormal (int ) ;
 scalar_t__ TransactionIdPrecedesOrEquals (int ,int ) ;
 int TransactionXmin ;
 int UINT32_ACCESS_ONCE (int ) ;
 TYPE_1__* allPgXact ;

bool
ProcArrayInstallRestoredXmin(TransactionId xmin, PGPROC *proc)
{
 bool result = 0;
 TransactionId xid;
 PGXACT *pgxact;

 Assert(TransactionIdIsNormal(xmin));
 Assert(proc != ((void*)0));


 LWLockAcquire(ProcArrayLock, LW_SHARED);

 pgxact = &allPgXact[proc->pgprocno];







 xid = UINT32_ACCESS_ONCE(pgxact->xmin);
 if (proc->databaseId == MyDatabaseId &&
  TransactionIdIsNormal(xid) &&
  TransactionIdPrecedesOrEquals(xid, xmin))
 {
  MyPgXact->xmin = TransactionXmin = xmin;
  result = 1;
 }

 LWLockRelease(ProcArrayLock);

 return result;
}
