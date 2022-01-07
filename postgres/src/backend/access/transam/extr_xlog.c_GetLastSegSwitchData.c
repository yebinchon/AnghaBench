
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pg_time_t ;
typedef int XLogRecPtr ;
struct TYPE_2__ {int lastSegSwitchLSN; int lastSegSwitchTime; } ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int WALWriteLock ;
 TYPE_1__* XLogCtl ;

pg_time_t
GetLastSegSwitchData(XLogRecPtr *lastSwitchLSN)
{
 pg_time_t result;


 LWLockAcquire(WALWriteLock, LW_SHARED);
 result = XLogCtl->lastSegSwitchTime;
 *lastSwitchLSN = XLogCtl->lastSegSwitchLSN;
 LWLockRelease(WALWriteLock);

 return result;
}
