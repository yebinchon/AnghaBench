
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_property {scalar_t__ type; struct obs_property* next; int name; } ;
typedef struct obs_property obs_property_t ;
struct TYPE_4__ {struct obs_property* first_property; } ;
typedef TYPE_1__ obs_properties_t ;


 scalar_t__ OBS_PROPERTY_GROUP ;
 TYPE_1__* obs_property_group_content (struct obs_property*) ;
 scalar_t__ strcmp (int ,char const*) ;

obs_property_t *obs_properties_get(obs_properties_t *props, const char *name)
{
 struct obs_property *property;

 if (!props)
  return ((void*)0);

 property = props->first_property;
 while (property) {
  if (strcmp(property->name, name) == 0)
   return property;

  if (property->type == OBS_PROPERTY_GROUP) {
   obs_properties_t *group =
    obs_property_group_content(property);
   obs_property_t *found = obs_properties_get(group, name);
   if (found != ((void*)0)) {
    return found;
   }
  }

  property = property->next;
 }

 return ((void*)0);
}
