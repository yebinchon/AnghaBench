
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_properties_t ;


 int * obs_properties_get_parent (int *) ;

__attribute__((used)) static inline obs_properties_t *get_topmost_parent(obs_properties_t *props)
{
 obs_properties_t *parent = props;
 obs_properties_t *last_parent = parent;
 while (parent) {
  last_parent = parent;
  parent = obs_properties_get_parent(parent);
 }
 return last_parent;
}
