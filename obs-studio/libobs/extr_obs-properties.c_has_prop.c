
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_properties {int dummy; } ;


 int contains_prop (int ,char const*) ;
 int get_topmost_parent (struct obs_properties*) ;

__attribute__((used)) static inline bool has_prop(struct obs_properties *props, const char *name)
{
 return contains_prop(get_topmost_parent(props), name);
}
