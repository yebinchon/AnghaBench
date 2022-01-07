
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {size_t locktag_lockmethodid; } ;
struct TYPE_4__ {int lockmode; TYPE_2__ locktag; } ;
typedef TYPE_1__ TwoPhaseLockRecord ;
typedef int TransactionId ;
typedef int PGPROC ;
typedef int LockMethod ;
typedef TYPE_2__ LOCKTAG ;
typedef size_t LOCKMETHODID ;


 int Assert (int) ;
 int ERROR ;
 int * LockMethods ;
 int LockRefindAndRelease (int ,int *,TYPE_2__*,int ,int) ;
 int * TwoPhaseGetDummyProc (int ,int) ;
 int elog (int ,char*,size_t) ;
 size_t lengthof (int *) ;

void
lock_twophase_postcommit(TransactionId xid, uint16 info,
       void *recdata, uint32 len)
{
 TwoPhaseLockRecord *rec = (TwoPhaseLockRecord *) recdata;
 PGPROC *proc = TwoPhaseGetDummyProc(xid, 1);
 LOCKTAG *locktag;
 LOCKMETHODID lockmethodid;
 LockMethod lockMethodTable;

 Assert(len == sizeof(TwoPhaseLockRecord));
 locktag = &rec->locktag;
 lockmethodid = locktag->locktag_lockmethodid;

 if (lockmethodid <= 0 || lockmethodid >= lengthof(LockMethods))
  elog(ERROR, "unrecognized lock method: %d", lockmethodid);
 lockMethodTable = LockMethods[lockmethodid];

 LockRefindAndRelease(lockMethodTable, proc, locktag, rec->lockmode, 1);
}
