
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ top; scalar_t__ bottom; } ;
struct obs_scene_item {TYPE_1__ crop; } ;



__attribute__((used)) static inline uint32_t calc_cy(const struct obs_scene_item *item,
          uint32_t height)
{
 uint32_t crop_cy = item->crop.top + item->crop.bottom;
 return (crop_cy > height) ? 2 : (height - crop_cy);
}
