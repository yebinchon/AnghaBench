
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {int dummy; } ;
struct list_data {int dummy; } ;


 struct list_data* get_property_data (struct obs_property*) ;
 int is_combo (struct obs_property*) ;

__attribute__((used)) static inline struct list_data *get_list_data(struct obs_property *p)
{
 if (!p || !is_combo(p))
  return ((void*)0);

 return get_property_data(p);
}
