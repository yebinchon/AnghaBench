
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_3__ {int insertingAt; int lock; } ;
struct TYPE_4__ {TYPE_1__ l; } ;


 int LWLockUpdateVar (int *,int *,int ) ;
 size_t MyLockNo ;
 int NUM_XLOGINSERT_LOCKS ;
 TYPE_2__* WALInsertLocks ;
 scalar_t__ holdingAllLocks ;

__attribute__((used)) static void
WALInsertLockUpdateInsertingAt(XLogRecPtr insertingAt)
{
 if (holdingAllLocks)
 {




  LWLockUpdateVar(&WALInsertLocks[NUM_XLOGINSERT_LOCKS - 1].l.lock,
      &WALInsertLocks[NUM_XLOGINSERT_LOCKS - 1].l.insertingAt,
      insertingAt);
 }
 else
  LWLockUpdateVar(&WALInsertLocks[MyLockNo].l.lock,
      &WALInsertLocks[MyLockNo].l.insertingAt,
      insertingAt);
}
