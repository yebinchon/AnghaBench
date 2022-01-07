
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef TYPE_1__ obs_property_t ;
struct TYPE_8__ {TYPE_1__* first_property; } ;
typedef TYPE_2__ obs_properties_t ;


 scalar_t__ OBS_PROPERTY_GROUP ;
 TYPE_2__* obs_property_group_content (TYPE_1__*) ;

__attribute__((used)) static bool check_property_group_recursion(obs_properties_t *parent,
        obs_properties_t *group)
{

 obs_property_t *current_property = group->first_property;
 while (current_property) {
  if (current_property->type == OBS_PROPERTY_GROUP) {
   obs_properties_t *cprops =
    obs_property_group_content(current_property);
   if (cprops == parent) {

    return 1;
   } else if (cprops == group) {


    return 1;
   }
   check_property_group_recursion(cprops, group);
  }

  current_property = current_property->next;
 }

 return 0;
}
