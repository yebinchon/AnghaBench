
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int * obs_properties_first (int *) ;
 int obs_property_next (int **) ;
 int obs_property_set_enabled (int *,int) ;

__attribute__((used)) static void v4l2_props_set_enabled(obs_properties_t *props,
       obs_property_t *ignore, bool enable)
{
 if (!props)
  return;

 for (obs_property_t *prop = obs_properties_first(props); prop != ((void*)0);
      obs_property_next(&prop)) {
  if (prop == ignore)
   continue;

  obs_property_set_enabled(prop, enable);
 }
}
