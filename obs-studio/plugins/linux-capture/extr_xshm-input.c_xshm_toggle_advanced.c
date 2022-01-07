
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_data_get_bool (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_modified (int *,int *) ;
 int obs_property_set_visible (int *,int const) ;

__attribute__((used)) static bool xshm_toggle_advanced(obs_properties_t *props, obs_property_t *p,
     obs_data_t *settings)
{
 UNUSED_PARAMETER(p);
 const bool visible = obs_data_get_bool(settings, "advanced");
 obs_property_t *server = obs_properties_get(props, "server");

 obs_property_set_visible(server, visible);


 obs_property_modified(server, settings);

 return 1;
}
