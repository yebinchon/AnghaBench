
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {struct obs_scene_item* next; scalar_t__ item_render; } ;
struct obs_scene {struct obs_scene_item* first_item; } ;


 int UNUSED_PARAMETER (float) ;
 int gs_texrender_reset (scalar_t__) ;
 int video_lock (struct obs_scene*) ;
 int video_unlock (struct obs_scene*) ;

__attribute__((used)) static void scene_video_tick(void *data, float seconds)
{
 struct obs_scene *scene = data;
 struct obs_scene_item *item;

 video_lock(scene);
 item = scene->first_item;
 while (item) {
  if (item->item_render)
   gs_texrender_reset(item->item_render);
  item = item->next;
 }
 video_unlock(scene);

 UNUSED_PARAMETER(seconds);
}
