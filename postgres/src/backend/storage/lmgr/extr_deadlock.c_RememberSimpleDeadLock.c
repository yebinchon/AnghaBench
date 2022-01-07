
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int pid; int lockmode; int locktag; } ;
struct TYPE_11__ {int tag; } ;
struct TYPE_10__ {int pid; int waitLockMode; TYPE_1__* waitLock; } ;
struct TYPE_9__ {int tag; } ;
typedef TYPE_2__ PGPROC ;
typedef int LOCKMODE ;
typedef TYPE_3__ LOCK ;
typedef TYPE_4__ DEADLOCK_INFO ;


 TYPE_4__* deadlockDetails ;
 int nDeadlockDetails ;

void
RememberSimpleDeadLock(PGPROC *proc1,
        LOCKMODE lockmode,
        LOCK *lock,
        PGPROC *proc2)
{
 DEADLOCK_INFO *info = &deadlockDetails[0];

 info->locktag = lock->tag;
 info->lockmode = lockmode;
 info->pid = proc1->pid;
 info++;
 info->locktag = proc2->waitLock->tag;
 info->lockmode = proc2->waitLockMode;
 info->pid = proc2->pid;
 nDeadlockDetails = 2;
}
