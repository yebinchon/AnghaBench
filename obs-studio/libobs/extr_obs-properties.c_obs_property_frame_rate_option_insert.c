
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_rate_option {void* description; void* name; } ;
struct frame_rate_data {int extra_options; } ;
typedef int obs_property_t ;


 int OBS_PROPERTY_FRAME_RATE ;
 void* bstrdup (char const*) ;
 struct frame_rate_option* da_insert_new (int ,size_t) ;
 struct frame_rate_data* get_type_data (int *,int ) ;

void obs_property_frame_rate_option_insert(obs_property_t *p, size_t idx,
        const char *name,
        const char *description)
{
 struct frame_rate_data *data =
  get_type_data(p, OBS_PROPERTY_FRAME_RATE);
 if (!data)
  return;

 struct frame_rate_option *opt = da_insert_new(data->extra_options, idx);

 opt->name = bstrdup(name);
 opt->description = bstrdup(description);
}
