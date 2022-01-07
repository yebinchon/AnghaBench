
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int name; } ;
typedef TYPE_1__ obs_property_t ;
struct TYPE_7__ {TYPE_1__* first_property; } ;
typedef TYPE_2__ obs_properties_t ;


 scalar_t__ has_prop (TYPE_2__*,int ) ;

__attribute__((used)) static bool check_property_group_duplicates(obs_properties_t *parent,
         obs_properties_t *group)
{
 obs_property_t *current_property = group->first_property;
 while (current_property) {
  if (has_prop(parent, current_property->name)) {
   return 1;
  }

  current_property = current_property->next;
 }

 return 0;
}
