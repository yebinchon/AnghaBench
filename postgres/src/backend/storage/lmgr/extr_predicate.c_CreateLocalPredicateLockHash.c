
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; } ;
typedef int PREDICATELOCKTARGETTAG ;
typedef int LOCALPREDICATELOCK ;
typedef TYPE_1__ HASHCTL ;


 int Assert (int ) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int * LocalPredicateLockHash ;
 int MemSet (TYPE_1__*,int ,int) ;
 int * hash_create (char*,int ,TYPE_1__*,int) ;
 int max_predicate_locks_per_xact ;

__attribute__((used)) static void
CreateLocalPredicateLockHash(void)
{
 HASHCTL hash_ctl;


 Assert(LocalPredicateLockHash == ((void*)0));
 MemSet(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(PREDICATELOCKTARGETTAG);
 hash_ctl.entrysize = sizeof(LOCALPREDICATELOCK);
 LocalPredicateLockHash = hash_create("Local predicate lock",
           max_predicate_locks_per_xact,
           &hash_ctl,
           HASH_ELEM | HASH_BLOBS);
}
