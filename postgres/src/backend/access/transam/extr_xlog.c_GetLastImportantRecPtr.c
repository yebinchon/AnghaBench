
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ lastImportantAt; int lock; } ;
struct TYPE_4__ {TYPE_1__ l; } ;


 scalar_t__ InvalidXLogRecPtr ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int NUM_XLOGINSERT_LOCKS ;
 TYPE_2__* WALInsertLocks ;

XLogRecPtr
GetLastImportantRecPtr(void)
{
 XLogRecPtr res = InvalidXLogRecPtr;
 int i;

 for (i = 0; i < NUM_XLOGINSERT_LOCKS; i++)
 {
  XLogRecPtr last_important;






  LWLockAcquire(&WALInsertLocks[i].l.lock, LW_EXCLUSIVE);
  last_important = WALInsertLocks[i].l.lastImportantAt;
  LWLockRelease(&WALInsertLocks[i].l.lock);

  if (res < last_important)
   res = last_important;
 }

 return res;
}
