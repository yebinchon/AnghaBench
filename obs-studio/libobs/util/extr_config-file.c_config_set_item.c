
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct darray {size_t num; struct config_section* array; } ;
struct config_section {char* value; void* name; struct darray items; } ;
struct config_item {char* value; void* name; struct darray items; } ;
struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ config_t ;


 scalar_t__ astrcmpi (void*,char const*) ;
 int bfree (char*) ;
 void* bstrdup (char const*) ;
 void* darray_push_back_new (int,struct darray*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void config_set_item(config_t *config, struct darray *sections,
       const char *section, const char *name, char *value)
{
 struct config_section *sec = ((void*)0);
 struct config_section *array = sections->array;
 struct config_item *item;
 size_t i, j;

 pthread_mutex_lock(&config->mutex);

 for (i = 0; i < sections->num; i++) {
  struct config_section *cur_sec = array + i;
  struct config_item *items = cur_sec->items.array;

  if (astrcmpi(cur_sec->name, section) == 0) {
   for (j = 0; j < cur_sec->items.num; j++) {
    item = items + j;

    if (astrcmpi(item->name, name) == 0) {
     bfree(item->value);
     item->value = value;
     goto unlock;
    }
   }

   sec = cur_sec;
   break;
  }
 }

 if (!sec) {
  sec = darray_push_back_new(sizeof(struct config_section),
        sections);
  sec->name = bstrdup(section);
 }

 item = darray_push_back_new(sizeof(struct config_item), &sec->items);
 item->name = bstrdup(name);
 item->value = value;

unlock:
 pthread_mutex_unlock(&config->mutex);
}
