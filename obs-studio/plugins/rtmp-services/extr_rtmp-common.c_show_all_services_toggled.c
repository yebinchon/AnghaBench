
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;
typedef int json_t ;


 int UNUSED_PARAMETER (int *) ;
 int build_service_list (int ,int *,int,char const*) ;
 int obs_data_get_bool (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_properties_get (int *,char*) ;
 int * obs_properties_get_param (int *) ;

__attribute__((used)) static bool show_all_services_toggled(obs_properties_t *ppts, obs_property_t *p,
          obs_data_t *settings)
{
 const char *cur_service = obs_data_get_string(settings, "service");
 bool show_all = obs_data_get_bool(settings, "show_all");

 json_t *root = obs_properties_get_param(ppts);
 if (!root)
  return 0;

 build_service_list(obs_properties_get(ppts, "service"), root, show_all,
      cur_service);

 UNUSED_PARAMETER(p);
 return 1;
}
