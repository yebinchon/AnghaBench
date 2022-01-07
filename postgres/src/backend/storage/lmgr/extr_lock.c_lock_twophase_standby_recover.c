
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {scalar_t__ locktag_lockmethodid; scalar_t__ locktag_type; int locktag_field2; int locktag_field1; } ;
struct TYPE_3__ {scalar_t__ lockmode; TYPE_2__ locktag; } ;
typedef TYPE_1__ TwoPhaseLockRecord ;
typedef int TransactionId ;
typedef TYPE_2__ LOCKTAG ;
typedef scalar_t__ LOCKMODE ;
typedef scalar_t__ LOCKMETHODID ;


 scalar_t__ AccessExclusiveLock ;
 int Assert (int) ;
 int ERROR ;
 scalar_t__ LOCKTAG_RELATION ;
 int LockMethods ;
 int StandbyAcquireAccessExclusiveLock (int ,int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ lengthof (int ) ;

void
lock_twophase_standby_recover(TransactionId xid, uint16 info,
         void *recdata, uint32 len)
{
 TwoPhaseLockRecord *rec = (TwoPhaseLockRecord *) recdata;
 LOCKTAG *locktag;
 LOCKMODE lockmode;
 LOCKMETHODID lockmethodid;

 Assert(len == sizeof(TwoPhaseLockRecord));
 locktag = &rec->locktag;
 lockmode = rec->lockmode;
 lockmethodid = locktag->locktag_lockmethodid;

 if (lockmethodid <= 0 || lockmethodid >= lengthof(LockMethods))
  elog(ERROR, "unrecognized lock method: %d", lockmethodid);

 if (lockmode == AccessExclusiveLock &&
  locktag->locktag_type == LOCKTAG_RELATION)
 {
  StandbyAcquireAccessExclusiveLock(xid,
            locktag->locktag_field1 ,
            locktag->locktag_field2 );
 }
}
