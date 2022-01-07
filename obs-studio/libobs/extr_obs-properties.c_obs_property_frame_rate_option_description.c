
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; TYPE_1__* array; } ;
struct frame_rate_data {TYPE_2__ extra_options; } ;
typedef int obs_property_t ;
struct TYPE_3__ {char const* description; } ;


 int OBS_PROPERTY_FRAME_RATE ;
 struct frame_rate_data* get_type_data (int *,int ) ;

const char *obs_property_frame_rate_option_description(obs_property_t *p,
             size_t idx)
{
 struct frame_rate_data *data =
  get_type_data(p, OBS_PROPERTY_FRAME_RATE);
 return data && data->extra_options.num > idx
         ? data->extra_options.array[idx].description
         : ((void*)0);
}
