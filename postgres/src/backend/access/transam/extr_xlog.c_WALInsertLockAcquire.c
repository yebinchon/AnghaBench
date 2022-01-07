
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pgprocno; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_5__ {TYPE_1__ l; } ;


 int LWLockAcquire (int *,int ) ;
 int LW_EXCLUSIVE ;
 size_t MyLockNo ;
 TYPE_3__* MyProc ;
 int NUM_XLOGINSERT_LOCKS ;
 TYPE_2__* WALInsertLocks ;

__attribute__((used)) static void
WALInsertLockAcquire(void)
{
 bool immed;
 static int lockToTry = -1;

 if (lockToTry == -1)
  lockToTry = MyProc->pgprocno % NUM_XLOGINSERT_LOCKS;
 MyLockNo = lockToTry;





 immed = LWLockAcquire(&WALInsertLocks[MyLockNo].l.lock, LW_EXCLUSIVE);
 if (!immed)
 {
  lockToTry = (lockToTry + 1) % NUM_XLOGINSERT_LOCKS;
 }
}
