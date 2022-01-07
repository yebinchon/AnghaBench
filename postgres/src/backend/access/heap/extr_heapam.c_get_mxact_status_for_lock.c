
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int updstatus; int lockstatus; } ;
typedef int MultiXactStatus ;
typedef size_t LockTupleMode ;


 int ERROR ;
 int elog (int ,char*,size_t,char*) ;
 TYPE_1__* tupleLockExtraInfo ;

__attribute__((used)) static MultiXactStatus
get_mxact_status_for_lock(LockTupleMode mode, bool is_update)
{
 int retval;

 if (is_update)
  retval = tupleLockExtraInfo[mode].updstatus;
 else
  retval = tupleLockExtraInfo[mode].lockstatus;

 if (retval == -1)
  elog(ERROR, "invalid lock tuple mode %d/%s", mode,
    is_update ? "true" : "false");

 return (MultiXactStatus) retval;
}
