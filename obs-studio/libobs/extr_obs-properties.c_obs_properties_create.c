
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_properties {int first_property; int * last; } ;
typedef struct obs_properties obs_properties_t ;


 struct obs_properties* bzalloc (int) ;

obs_properties_t *obs_properties_create(void)
{
 struct obs_properties *props;
 props = bzalloc(sizeof(struct obs_properties));
 props->last = &props->first_property;
 return props;
}
