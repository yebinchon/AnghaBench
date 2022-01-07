
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obs_scene_item {TYPE_2__* source; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 scalar_t__ OBS_SOURCE_TYPE_SCENE ;

__attribute__((used)) static inline bool item_is_scene(const struct obs_scene_item *item)
{
 return item->source && item->source->info.type == OBS_SOURCE_TYPE_SCENE;
}
