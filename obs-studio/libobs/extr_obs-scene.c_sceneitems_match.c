
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ obs_sceneitem_t ;
struct TYPE_6__ {TYPE_1__* first_item; } ;
typedef TYPE_2__ obs_scene_t ;



__attribute__((used)) static bool sceneitems_match(obs_scene_t *scene, obs_sceneitem_t *const *items,
        size_t size, bool *order_matches)
{
 obs_sceneitem_t *item = scene->first_item;

 size_t count = 0;
 while (item) {
  bool found = 0;
  for (size_t i = 0; i < size; i++) {
   if (items[i] != item)
    continue;

   if (count != i)
    *order_matches = 0;

   found = 1;
   break;
  }

  if (!found)
   return 0;

  item = item->next;
  count += 1;
 }

 return count == size;
}
