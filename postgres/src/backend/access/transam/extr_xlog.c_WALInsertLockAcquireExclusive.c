
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int insertingAt; } ;
struct TYPE_4__ {TYPE_1__ l; } ;


 int LWLockAcquire (int *,int ) ;
 int LWLockUpdateVar (int *,int *,int ) ;
 int LW_EXCLUSIVE ;
 int NUM_XLOGINSERT_LOCKS ;
 int PG_UINT64_MAX ;
 TYPE_2__* WALInsertLocks ;
 int holdingAllLocks ;

__attribute__((used)) static void
WALInsertLockAcquireExclusive(void)
{
 int i;






 for (i = 0; i < NUM_XLOGINSERT_LOCKS - 1; i++)
 {
  LWLockAcquire(&WALInsertLocks[i].l.lock, LW_EXCLUSIVE);
  LWLockUpdateVar(&WALInsertLocks[i].l.lock,
      &WALInsertLocks[i].l.insertingAt,
      PG_UINT64_MAX);
 }

 LWLockAcquire(&WALInsertLocks[i].l.lock, LW_EXCLUSIVE);

 holdingAllLocks = 1;
}
