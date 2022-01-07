
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {int removed; } ;


 int detach_sceneitem (struct obs_scene_item*) ;
 int set_visibility (struct obs_scene_item*,int) ;
 int signal_item_remove (struct obs_scene_item*) ;

__attribute__((used)) static inline void remove_without_release(struct obs_scene_item *item)
{
 item->removed = 1;
 set_visibility(item, 0);
 signal_item_remove(item);
 detach_sceneitem(item);
}
