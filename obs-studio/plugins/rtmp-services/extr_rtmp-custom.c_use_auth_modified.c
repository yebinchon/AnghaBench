
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int obs_data_get_bool (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_set_visible (int *,int) ;

__attribute__((used)) static bool use_auth_modified(obs_properties_t *ppts, obs_property_t *p,
         obs_data_t *settings)
{
 bool use_auth = obs_data_get_bool(settings, "use_auth");
 p = obs_properties_get(ppts, "username");
 obs_property_set_visible(p, use_auth);
 p = obs_properties_get(ppts, "password");
 obs_property_set_visible(p, use_auth);
 return 1;
}
