
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_scene_item {scalar_t__ scale_filter; } ;


 scalar_t__ OBS_SCALE_DISABLE ;

__attribute__((used)) static inline bool scale_filter_enabled(const struct obs_scene_item *item)
{
 return item->scale_filter != OBS_SCALE_DISABLE;
}
