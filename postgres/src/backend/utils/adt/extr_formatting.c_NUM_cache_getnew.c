
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valid; scalar_t__ age; int str; } ;
typedef TYPE_1__ NUMCacheEntry ;


 int Assert (int ) ;
 int DEBUG_elog_output ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 TYPE_1__** NUMCache ;
 void* NUMCounter ;
 int NUM_CACHE_ENTRIES ;
 scalar_t__ NUM_CACHE_SIZE ;
 int NUM_prevent_counter_overflow () ;
 int StrNCpy (int ,char const*,scalar_t__) ;
 int TopMemoryContext ;
 int elog (int ,char*,int,...) ;
 int n_NUMCache ;

__attribute__((used)) static NUMCacheEntry *
NUM_cache_getnew(const char *str)
{
 NUMCacheEntry *ent;


 NUM_prevent_counter_overflow();




 if (n_NUMCache >= NUM_CACHE_ENTRIES)
 {
  NUMCacheEntry *old = NUMCache[0];




  if (old->valid)
  {
   for (int i = 1; i < NUM_CACHE_ENTRIES; i++)
   {
    ent = NUMCache[i];
    if (!ent->valid)
    {
     old = ent;
     break;
    }
    if (ent->age < old->age)
     old = ent;
   }
  }



  old->valid = 0;
  StrNCpy(old->str, str, NUM_CACHE_SIZE + 1);
  old->age = (++NUMCounter);

  return old;
 }
 else
 {



  Assert(NUMCache[n_NUMCache] == ((void*)0));
  NUMCache[n_NUMCache] = ent = (NUMCacheEntry *)
   MemoryContextAllocZero(TopMemoryContext, sizeof(NUMCacheEntry));
  ent->valid = 0;
  StrNCpy(ent->str, str, NUM_CACHE_SIZE + 1);
  ent->age = (++NUMCounter);

  ++n_NUMCache;
  return ent;
 }
}
