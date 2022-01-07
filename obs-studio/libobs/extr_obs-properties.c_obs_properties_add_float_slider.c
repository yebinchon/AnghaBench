
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_NUMBER_SLIDER ;
 int * add_flt (int *,char const*,char const*,double,double,double,int ) ;

obs_property_t *obs_properties_add_float_slider(obs_properties_t *props,
      const char *name,
      const char *desc, double min,
      double max, double step)
{
 return add_flt(props, name, desc, min, max, step, OBS_NUMBER_SLIDER);
}
