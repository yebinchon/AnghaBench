
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {scalar_t__ type; struct obs_property* next; int name; } ;
struct obs_properties {struct obs_property* first_property; } ;


 int LOG_WARNING ;
 scalar_t__ OBS_PROPERTY_GROUP ;
 int blog (int ,char*,char const*) ;
 struct obs_properties* obs_property_group_content (struct obs_property*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static inline bool contains_prop(struct obs_properties *props, const char *name)
{
 struct obs_property *p = props->first_property;

 while (p) {
  if (strcmp(p->name, name) == 0) {
   blog(LOG_WARNING, "Property '%s' exists", name);
   return 1;
  }

  if (p->type == OBS_PROPERTY_GROUP) {
   if (contains_prop(obs_property_group_content(p),
       name)) {
    return 1;
   }
  }

  p = p->next;
 }

 return 0;
}
