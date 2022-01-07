
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* source; scalar_t__ is_group; } ;
typedef TYPE_3__ obs_sceneitem_t ;
typedef int obs_scene_t ;
struct TYPE_5__ {int * data; } ;
struct TYPE_6__ {TYPE_1__ context; } ;



obs_scene_t *obs_sceneitem_group_get_scene(const obs_sceneitem_t *item)
{
 return (item && item->is_group) ? item->source->context.data : ((void*)0);
}
