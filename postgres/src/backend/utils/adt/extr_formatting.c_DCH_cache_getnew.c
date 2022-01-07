
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valid; scalar_t__ age; int std; int str; } ;
typedef TYPE_1__ DCHCacheEntry ;


 int Assert (int ) ;
 TYPE_1__** DCHCache ;
 void* DCHCounter ;
 int DCH_CACHE_ENTRIES ;
 scalar_t__ DCH_CACHE_SIZE ;
 int DCH_prevent_counter_overflow () ;
 int DEBUG_elog_output ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int StrNCpy (int ,char const*,scalar_t__) ;
 int TopMemoryContext ;
 int elog (int ,char*,int,...) ;
 int n_DCHCache ;

__attribute__((used)) static DCHCacheEntry *
DCH_cache_getnew(const char *str, bool std)
{
 DCHCacheEntry *ent;


 DCH_prevent_counter_overflow();




 if (n_DCHCache >= DCH_CACHE_ENTRIES)
 {
  DCHCacheEntry *old = DCHCache[0];




  if (old->valid)
  {
   for (int i = 1; i < DCH_CACHE_ENTRIES; i++)
   {
    ent = DCHCache[i];
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
  StrNCpy(old->str, str, DCH_CACHE_SIZE + 1);
  old->age = (++DCHCounter);

  return old;
 }
 else
 {



  Assert(DCHCache[n_DCHCache] == ((void*)0));
  DCHCache[n_DCHCache] = ent = (DCHCacheEntry *)
   MemoryContextAllocZero(TopMemoryContext, sizeof(DCHCacheEntry));
  ent->valid = 0;
  StrNCpy(ent->str, str, DCH_CACHE_SIZE + 1);
  ent->std = std;
  ent->age = (++DCHCounter);

  ++n_DCHCache;
  return ent;
 }
}
