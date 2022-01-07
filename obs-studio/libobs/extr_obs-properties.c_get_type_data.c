
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int type; } ;
typedef enum obs_property_type { ____Placeholder_obs_property_type } obs_property_type ;


 void* get_property_data (struct obs_property*) ;

__attribute__((used)) static inline void *get_type_data(struct obs_property *prop,
      enum obs_property_type type)
{
 if (!prop || prop->type != type)
  return ((void*)0);

 return get_property_data(prop);
}
