
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_rate_data {int dummy; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_FRAME_RATE ;
 int frame_rate_data_options_free (struct frame_rate_data*) ;
 int frame_rate_data_ranges_free (struct frame_rate_data*) ;
 struct frame_rate_data* get_type_data (int *,int ) ;

void obs_property_frame_rate_clear(obs_property_t *p)
{
 struct frame_rate_data *data =
  get_type_data(p, OBS_PROPERTY_FRAME_RATE);
 if (!data)
  return;

 frame_rate_data_options_free(data);
 frame_rate_data_ranges_free(data);
}
