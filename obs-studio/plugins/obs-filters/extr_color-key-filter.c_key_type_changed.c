
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int SETTING_COLOR_TYPE ;
 int SETTING_KEY_COLOR ;
 int UNUSED_PARAMETER (int *) ;
 char* obs_data_get_string (int *,int ) ;
 int obs_properties_get (int *,int ) ;
 int obs_property_set_visible (int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool key_type_changed(obs_properties_t *props, obs_property_t *p,
        obs_data_t *settings)
{
 const char *type = obs_data_get_string(settings, SETTING_COLOR_TYPE);
 bool custom = strcmp(type, "custom") == 0;

 obs_property_set_visible(obs_properties_get(props, SETTING_KEY_COLOR),
     custom);

 UNUSED_PARAMETER(p);
 return 1;
}
