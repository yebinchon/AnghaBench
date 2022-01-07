
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct obs_scene_item {scalar_t__ last_width; scalar_t__ last_height; int source; } ;


 scalar_t__ obs_source_get_height (int ) ;
 scalar_t__ obs_source_get_width (int ) ;

__attribute__((used)) static inline bool source_size_changed(struct obs_scene_item *item)
{
 uint32_t width = obs_source_get_width(item->source);
 uint32_t height = obs_source_get_height(item->source);

 return item->last_width != width || item->last_height != height;
}
