
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_data_get_bool (int *,char*) ;
 int obs_properties_get (int *,char*) ;
 int obs_property_set_visible (int ,int) ;

__attribute__((used)) static bool limit_cy_clicked(obs_properties_t *props, obs_property_t *p,
        obs_data_t *settings)
{
 bool limit_size = obs_data_get_bool(settings, "limit_cy");
 obs_property_set_visible(obs_properties_get(props, "cy"), limit_size);

 UNUSED_PARAMETER(p);
 return 1;
}
