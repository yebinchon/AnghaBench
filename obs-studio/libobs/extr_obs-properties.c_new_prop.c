
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int enabled; int visible; int type; void* desc; void* name; struct obs_properties* parent; } ;
struct obs_properties {int dummy; } ;
typedef enum obs_property_type { ____Placeholder_obs_property_type } obs_property_type ;


 void* bstrdup (char const*) ;
 struct obs_property* bzalloc (int) ;
 size_t get_property_size (int) ;
 int propertes_add (struct obs_properties*,struct obs_property*) ;

__attribute__((used)) static inline struct obs_property *new_prop(struct obs_properties *props,
         const char *name, const char *desc,
         enum obs_property_type type)
{
 size_t data_size = get_property_size(type);
 struct obs_property *p;

 p = bzalloc(sizeof(struct obs_property) + data_size);
 p->parent = props;
 p->enabled = 1;
 p->visible = 1;
 p->type = type;
 p->name = bstrdup(name);
 p->desc = bstrdup(desc);
 propertes_add(props, p);

 return p;
}
