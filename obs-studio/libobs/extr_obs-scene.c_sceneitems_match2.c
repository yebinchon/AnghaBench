
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_sceneitem_order_info {scalar_t__ group; scalar_t__ item; } ;
typedef int obs_scene_t ;


 int bfree (struct obs_sceneitem_order_info*) ;
 int build_current_order_info (int *,struct obs_sceneitem_order_info**,size_t*) ;

__attribute__((used)) static bool sceneitems_match2(obs_scene_t *scene,
         struct obs_sceneitem_order_info *items,
         size_t size)
{
 struct obs_sceneitem_order_info *cur_items;
 size_t cur_size;

 build_current_order_info(scene, &cur_items, &cur_size);
 if (cur_size != size) {
  bfree(cur_items);
  return 0;
 }

 for (size_t i = 0; i < size; i++) {
  struct obs_sceneitem_order_info *new = &items[i];
  struct obs_sceneitem_order_info *old = &cur_items[i];

  if (new->group != old->group || new->item != old->item) {
   bfree(cur_items);
   return 0;
  }
 }

 bfree(cur_items);
 return 1;
}
