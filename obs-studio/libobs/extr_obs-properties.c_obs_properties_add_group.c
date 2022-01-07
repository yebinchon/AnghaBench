
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct group_data {int type; TYPE_1__* content; } ;
typedef int obs_property_t ;
struct TYPE_10__ {int * parent; } ;
typedef TYPE_1__ obs_properties_t ;
typedef enum obs_group_type { ____Placeholder_obs_group_type } obs_group_type ;


 int OBS_PROPERTY_GROUP ;
 scalar_t__ check_property_group_duplicates (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ check_property_group_recursion (TYPE_1__*,TYPE_1__*) ;
 struct group_data* get_property_data (int *) ;
 scalar_t__ has_prop (TYPE_1__*,char const*) ;
 int * new_prop (TYPE_1__*,char const*,char const*,int ) ;

obs_property_t *obs_properties_add_group(obs_properties_t *props,
      const char *name, const char *desc,
      enum obs_group_type type,
      obs_properties_t *group)
{
 if (!props || has_prop(props, name))
  return ((void*)0);
 if (!group)
  return ((void*)0);


 if (props == group)
  return ((void*)0);
 if (check_property_group_recursion(props, group))
  return ((void*)0);


 if (check_property_group_duplicates(props, group))
  return ((void*)0);

 obs_property_t *p = new_prop(props, name, desc, OBS_PROPERTY_GROUP);
 group->parent = p;

 struct group_data *data = get_property_data(p);
 data->type = type;
 data->content = group;
 return p;
}
