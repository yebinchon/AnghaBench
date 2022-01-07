
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int localtag ;
struct TYPE_5__ {scalar_t__ nLocks; } ;
struct TYPE_4__ {int mode; int lock; } ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;
typedef TYPE_1__ LOCALLOCKTAG ;
typedef TYPE_2__ LOCALLOCK ;


 int HASH_FIND ;
 int LockMethodLocalHash ;
 int MemSet (TYPE_1__*,int ,int) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;

bool
LockHeldByMe(const LOCKTAG *locktag, LOCKMODE lockmode)
{
 LOCALLOCKTAG localtag;
 LOCALLOCK *locallock;




 MemSet(&localtag, 0, sizeof(localtag));
 localtag.lock = *locktag;
 localtag.mode = lockmode;

 locallock = (LOCALLOCK *) hash_search(LockMethodLocalHash,
            (void *) &localtag,
            HASH_FIND, ((void*)0));

 return (locallock && locallock->nLocks > 0);
}
