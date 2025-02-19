
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {float x; float y; } ;
struct TYPE_5__ {float x; float y; } ;
struct TYPE_4__ {float x; float y; } ;
struct scroll_filter_data {TYPE_3__ offset; scalar_t__ loop; TYPE_2__ scroll_speed; TYPE_1__ size_i; } ;



__attribute__((used)) static void scroll_filter_tick(void *data, float seconds)
{
 struct scroll_filter_data *filter = data;

 filter->offset.x += filter->size_i.x * filter->scroll_speed.x * seconds;
 filter->offset.y += filter->size_i.y * filter->scroll_speed.y * seconds;

 if (filter->loop) {
  if (filter->offset.x > 1.0f)
   filter->offset.x -= 1.0f;
  if (filter->offset.y > 1.0f)
   filter->offset.y -= 1.0f;
 } else {
  if (filter->offset.x > 1.0f)
   filter->offset.x = 1.0f;
  if (filter->offset.y > 1.0f)
   filter->offset.y = 1.0f;
 }
}
