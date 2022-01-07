
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_properties {int dummy; } ;
typedef struct obs_properties obs_properties_t ;


 struct obs_properties* obs_properties_create () ;
 int obs_properties_set_param (struct obs_properties*,void*,void (*) (void*)) ;

obs_properties_t *obs_properties_create_param(void *param,
           void (*destroy)(void *param))
{
 struct obs_properties *props = obs_properties_create();
 obs_properties_set_param(props, param, destroy);
 return props;
}
