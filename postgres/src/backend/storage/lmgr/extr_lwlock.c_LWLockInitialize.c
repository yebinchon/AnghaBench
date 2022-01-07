
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tranche; int waiters; int nwaiters; int state; } ;
typedef TYPE_1__ LWLock ;


 int LW_FLAG_RELEASE_OK ;
 int pg_atomic_init_u32 (int *,int ) ;
 int proclist_init (int *) ;

void
LWLockInitialize(LWLock *lock, int tranche_id)
{
 pg_atomic_init_u32(&lock->state, LW_FLAG_RELEASE_OK);



 lock->tranche = tranche_id;
 proclist_init(&lock->waiters);
}
