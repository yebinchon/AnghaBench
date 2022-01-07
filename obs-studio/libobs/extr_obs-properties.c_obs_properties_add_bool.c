
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_PROPERTY_BOOL ;
 scalar_t__ has_prop (int *,char const*) ;
 int * new_prop (int *,char const*,char const*,int ) ;

obs_property_t *obs_properties_add_bool(obs_properties_t *props,
     const char *name, const char *desc)
{
 if (!props || has_prop(props, name))
  return ((void*)0);
 return new_prop(props, name, desc, OBS_PROPERTY_BOOL);
}
