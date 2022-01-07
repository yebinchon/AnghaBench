
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct config_item {char* value; } ;
struct TYPE_3__ {int mutex; int defaults; } ;
typedef TYPE_1__ config_t ;


 struct config_item* config_find_item (int *,char const*,char const*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

const char *config_get_default_string(config_t *config, const char *section,
          const char *name)
{
 const struct config_item *item;
 const char *value = ((void*)0);

 pthread_mutex_lock(&config->mutex);

 item = config_find_item(&config->defaults, section, name);
 if (item)
  value = item->value;

 pthread_mutex_unlock(&config->mutex);
 return value;
}
