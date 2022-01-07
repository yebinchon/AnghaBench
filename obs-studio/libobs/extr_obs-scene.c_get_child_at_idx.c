
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_scene_item {int * source; struct obs_scene_item* next; } ;
typedef int obs_source_t ;
struct TYPE_3__ {struct obs_scene_item* first_item; } ;
typedef TYPE_1__ obs_scene_t ;



__attribute__((used)) static obs_source_t *get_child_at_idx(obs_scene_t *scene, size_t idx)
{
 struct obs_scene_item *item = scene->first_item;

 while (item && idx--)
  item = item->next;
 return item ? item->source : ((void*)0);
}
