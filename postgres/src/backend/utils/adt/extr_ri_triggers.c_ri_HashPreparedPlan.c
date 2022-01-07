
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * plan; } ;
typedef int * SPIPlanPtr ;
typedef int RI_QueryKey ;
typedef TYPE_1__ RI_QueryHashEntry ;


 int Assert (int) ;
 int HASH_ENTER ;
 scalar_t__ hash_search (int ,void*,int ,int*) ;
 int ri_InitHashTables () ;
 int ri_query_cache ;

__attribute__((used)) static void
ri_HashPreparedPlan(RI_QueryKey *key, SPIPlanPtr plan)
{
 RI_QueryHashEntry *entry;
 bool found;




 if (!ri_query_cache)
  ri_InitHashTables();





 entry = (RI_QueryHashEntry *) hash_search(ri_query_cache,
             (void *) key,
             HASH_ENTER, &found);
 Assert(!found || entry->plan == ((void*)0));
 entry->plan = plan;
}
