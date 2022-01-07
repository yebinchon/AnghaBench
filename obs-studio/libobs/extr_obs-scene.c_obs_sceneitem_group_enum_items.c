
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* source; int is_group; } ;
typedef TYPE_3__ obs_sceneitem_t ;
typedef int obs_scene_t ;
struct TYPE_8__ {int * data; } ;
struct TYPE_9__ {TYPE_1__ context; } ;


 int obs_scene_enum_items (int *,int (*) (obs_scene_t*,TYPE_3__*,void*),void*) ;

void obs_sceneitem_group_enum_items(obs_sceneitem_t *group,
        bool (*callback)(obs_scene_t *,
           obs_sceneitem_t *, void *),
        void *param)
{
 if (!group || !group->is_group)
  return;

 obs_scene_t *scene = group->source->context.data;
 if (scene)
  obs_scene_enum_items(scene, callback, param);
}
