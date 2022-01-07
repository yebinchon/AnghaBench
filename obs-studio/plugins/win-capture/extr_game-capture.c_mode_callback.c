
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int SETTING_ANY_FULLSCREEN ;
 int SETTING_CAPTURE_WINDOW ;
 int SETTING_MODE ;
 int SETTING_MODE_WINDOW ;
 int SETTING_WINDOW_PRIORITY ;
 int obs_data_get_bool (int *,int ) ;
 char* obs_data_get_string (int *,int ) ;
 int * obs_properties_get (int *,int ) ;
 int obs_property_set_visible (int *,int) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ using_older_non_mode_format (int *) ;

__attribute__((used)) static bool mode_callback(obs_properties_t *ppts, obs_property_t *p,
     obs_data_t *settings)
{
 bool capture_window;

 if (using_older_non_mode_format(settings)) {
  capture_window =
   !obs_data_get_bool(settings, SETTING_ANY_FULLSCREEN);
 } else {
  const char *mode = obs_data_get_string(settings, SETTING_MODE);
  capture_window = strcmp(mode, SETTING_MODE_WINDOW) == 0;
 }

 p = obs_properties_get(ppts, SETTING_CAPTURE_WINDOW);
 obs_property_set_visible(p, capture_window);

 p = obs_properties_get(ppts, SETTING_WINDOW_PRIORITY);
 obs_property_set_visible(p, capture_window);

 return 1;
}
