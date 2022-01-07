
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ profiler_name_store_t ;


 int bfree (TYPE_1__*) ;
 TYPE_1__* bzalloc (int) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

profiler_name_store_t *profiler_name_store_create(void)
{
 profiler_name_store_t *store = bzalloc(sizeof(profiler_name_store_t));

 if (pthread_mutex_init(&store->mutex, ((void*)0)))
  goto error;

 return store;

error:
 bfree(store);
 return ((void*)0);
}
