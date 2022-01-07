
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * plan; } ;
typedef int * SPIPlanPtr ;
typedef int RI_QueryKey ;
typedef TYPE_1__ RI_QueryHashEntry ;


 int HASH_FIND ;
 int SPI_freeplan (int *) ;
 scalar_t__ SPI_plan_is_valid (int *) ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;
 int ri_InitHashTables () ;
 int ri_query_cache ;

__attribute__((used)) static SPIPlanPtr
ri_FetchPreparedPlan(RI_QueryKey *key)
{
 RI_QueryHashEntry *entry;
 SPIPlanPtr plan;




 if (!ri_query_cache)
  ri_InitHashTables();




 entry = (RI_QueryHashEntry *) hash_search(ri_query_cache,
             (void *) key,
             HASH_FIND, ((void*)0));
 if (entry == ((void*)0))
  return ((void*)0);
 plan = entry->plan;
 if (plan && SPI_plan_is_valid(plan))
  return plan;





 entry->plan = ((void*)0);
 if (plan)
  SPI_freeplan(plan);

 return ((void*)0);
}
