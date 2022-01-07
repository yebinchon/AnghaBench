
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {struct obs_scene_item* prev; struct obs_scene_item* next; struct obs_scene* parent; } ;
struct obs_scene {struct obs_scene_item* first_item; } ;



__attribute__((used)) static inline void attach_sceneitem(struct obs_scene *parent,
        struct obs_scene_item *item,
        struct obs_scene_item *prev)
{
 item->prev = prev;
 item->parent = parent;

 if (prev) {
  item->next = prev->next;
  if (prev->next)
   prev->next->prev = item;
  prev->next = item;
 } else {
  item->next = parent->first_item;
  if (parent->first_item)
   parent->first_item->prev = item;
  parent->first_item = item;
 }
}
