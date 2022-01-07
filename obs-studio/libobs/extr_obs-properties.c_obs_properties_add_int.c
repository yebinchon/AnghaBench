
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_NUMBER_SCROLLER ;
 int * add_int (int *,char const*,char const*,int,int,int,int ) ;

obs_property_t *obs_properties_add_int(obs_properties_t *props,
           const char *name, const char *desc,
           int min, int max, int step)
{
 return add_int(props, name, desc, min, max, step, OBS_NUMBER_SCROLLER);
}
