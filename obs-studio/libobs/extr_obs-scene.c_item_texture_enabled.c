
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {int is_group; int crop; } ;


 scalar_t__ crop_enabled (int *) ;
 scalar_t__ item_is_scene (struct obs_scene_item const*) ;
 scalar_t__ scale_filter_enabled (struct obs_scene_item const*) ;

__attribute__((used)) static inline bool item_texture_enabled(const struct obs_scene_item *item)
{
 return crop_enabled(&item->crop) || scale_filter_enabled(item) ||
        (item_is_scene(item) && !item->is_group);
}
