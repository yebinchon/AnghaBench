
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidSerializableXact ;
 int * LocalPredicateLockHash ;
 int MySerializableXact ;
 int MyXactDidWrite ;
 int hash_destroy (int *) ;

__attribute__((used)) static void
ReleasePredicateLocksLocal(void)
{
 MySerializableXact = InvalidSerializableXact;
 MyXactDidWrite = 0;


 if (LocalPredicateLockHash != ((void*)0))
 {
  hash_destroy(LocalPredicateLockHash);
  LocalPredicateLockHash = ((void*)0);
 }
}
