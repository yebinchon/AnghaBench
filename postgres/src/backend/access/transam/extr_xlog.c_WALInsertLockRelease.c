
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int insertingAt; int lock; } ;
struct TYPE_4__ {TYPE_1__ l; } ;


 int LWLockReleaseClearVar (int *,int *,int ) ;
 size_t MyLockNo ;
 int NUM_XLOGINSERT_LOCKS ;
 TYPE_2__* WALInsertLocks ;
 int holdingAllLocks ;

__attribute__((used)) static void
WALInsertLockRelease(void)
{
 if (holdingAllLocks)
 {
  int i;

  for (i = 0; i < NUM_XLOGINSERT_LOCKS; i++)
   LWLockReleaseClearVar(&WALInsertLocks[i].l.lock,
          &WALInsertLocks[i].l.insertingAt,
          0);

  holdingAllLocks = 0;
 }
 else
 {
  LWLockReleaseClearVar(&WALInsertLocks[MyLockNo].l.lock,
         &WALInsertLocks[MyLockNo].l.insertingAt,
         0);
 }
}
