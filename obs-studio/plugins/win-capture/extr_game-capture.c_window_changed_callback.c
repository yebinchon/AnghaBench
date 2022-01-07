
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int SETTING_CAPTURE_WINDOW ;
 int UNUSED_PARAMETER (int *) ;
 int insert_preserved_val (int *,char const*) ;
 char* obs_data_get_string (int *,int ) ;
 char* obs_property_list_item_string (int *,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool window_changed_callback(obs_properties_t *ppts, obs_property_t *p,
        obs_data_t *settings)
{
 const char *cur_val;
 bool match = 0;
 size_t i = 0;

 cur_val = obs_data_get_string(settings, SETTING_CAPTURE_WINDOW);
 if (!cur_val) {
  return 0;
 }

 for (;;) {
  const char *val = obs_property_list_item_string(p, i++);
  if (!val)
   break;

  if (strcmp(val, cur_val) == 0) {
   match = 1;
   break;
  }
 }

 if (cur_val && *cur_val && !match) {
  insert_preserved_val(p, cur_val);
  return 1;
 }

 UNUSED_PARAMETER(ppts);
 return 0;
}
