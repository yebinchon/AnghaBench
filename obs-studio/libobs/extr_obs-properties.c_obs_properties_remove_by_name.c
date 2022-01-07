
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct obs_property {scalar_t__ type; struct obs_property* next; int name; } ;
struct TYPE_4__ {struct obs_property* first_property; } ;
typedef TYPE_1__ obs_properties_t ;


 scalar_t__ OBS_PROPERTY_GROUP ;
 int obs_property_destroy (struct obs_property*) ;
 TYPE_1__* obs_property_group_content (struct obs_property*) ;
 scalar_t__ strcmp (int ,char const*) ;

void obs_properties_remove_by_name(obs_properties_t *props, const char *name)
{
 if (!props)
  return;





 struct obs_property *cur = props->first_property;
 struct obs_property *prev = props->first_property;

 while (cur) {
  if (strcmp(cur->name, name) == 0) {
   prev->next = cur->next;
   cur->next = 0;
   obs_property_destroy(cur);
   break;
  }

  if (cur->type == OBS_PROPERTY_GROUP) {
   obs_properties_remove_by_name(
    obs_property_group_content(cur), name);
  }

  prev = cur;
  cur = cur->next;
 }
}
