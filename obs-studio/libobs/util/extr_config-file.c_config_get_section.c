
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_section {char* name; } ;
struct TYPE_5__ {size_t num; } ;
struct TYPE_4__ {int mutex; TYPE_2__ sections; } ;
typedef TYPE_1__ config_t ;


 struct config_section* darray_item (int,TYPE_2__*,size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

const char *config_get_section(config_t *config, size_t idx)
{
 struct config_section *section;
 const char *name = ((void*)0);

 pthread_mutex_lock(&config->mutex);

 if (idx >= config->sections.num)
  goto unlock;

 section = darray_item(sizeof(struct config_section), &config->sections,
         idx);
 name = section->name;

unlock:
 pthread_mutex_unlock(&config->mutex);
 return name;
}
