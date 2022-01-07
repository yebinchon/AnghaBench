
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ left; scalar_t__ right; } ;
struct obs_scene_item {TYPE_1__ crop; } ;



__attribute__((used)) static inline uint32_t calc_cx(const struct obs_scene_item *item,
          uint32_t width)
{
 uint32_t crop_cx = item->crop.left + item->crop.right;
 return (crop_cx > width) ? 2 : (width - crop_cx);
}
