
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ age; int str; scalar_t__ valid; } ;
typedef TYPE_1__ NUMCacheEntry ;


 TYPE_1__** NUMCache ;
 scalar_t__ NUMCounter ;
 int NUM_prevent_counter_overflow () ;
 int n_NUMCache ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static NUMCacheEntry *
NUM_cache_search(const char *str)
{

 NUM_prevent_counter_overflow();

 for (int i = 0; i < n_NUMCache; i++)
 {
  NUMCacheEntry *ent = NUMCache[i];

  if (ent->valid && strcmp(ent->str, str) == 0)
  {
   ent->age = (++NUMCounter);
   return ent;
  }
 }

 return ((void*)0);
}
