
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t num; TYPE_1__** array; } ;
struct TYPE_5__ {TYPE_3__ names; } ;
typedef TYPE_1__ profiler_name_store_t ;


 int bfree (TYPE_1__*) ;
 int da_free (TYPE_3__) ;

void profiler_name_store_free(profiler_name_store_t *store)
{
 if (!store)
  return;

 for (size_t i = 0; i < store->names.num; i++)
  bfree(store->names.array[i]);

 da_free(store->names);
 bfree(store);
}
