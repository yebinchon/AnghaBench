
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; } ;
struct frame_rate_data {TYPE_1__ ranges; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_FRAME_RATE ;
 struct frame_rate_data* get_type_data (int *,int ) ;

size_t obs_property_frame_rate_fps_ranges_count(obs_property_t *p)
{
 struct frame_rate_data *data =
  get_type_data(p, OBS_PROPERTY_FRAME_RATE);
 return data ? data->ranges.num : 0;
}
