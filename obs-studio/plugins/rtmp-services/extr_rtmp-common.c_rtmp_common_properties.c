
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int json_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int OBS_TEXT_PASSWORD ;
 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int * obs_properties_add_bool (int *,char*,int ) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int obs_properties_add_text (int *,char*,int ,int ) ;
 int * obs_properties_create () ;
 int obs_properties_set_param (int *,int *,int ) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int * open_services_file () ;
 int properties_data_destroy ;
 int service_selected ;
 int show_all_services_toggled ;

__attribute__((used)) static obs_properties_t *rtmp_common_properties(void *unused)
{
 UNUSED_PARAMETER(unused);

 obs_properties_t *ppts = obs_properties_create();
 obs_property_t *p;
 json_t *root;

 root = open_services_file();
 if (root)
  obs_properties_set_param(ppts, root, properties_data_destroy);

 p = obs_properties_add_list(ppts, "service", obs_module_text("Service"),
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);

 obs_property_set_modified_callback(p, service_selected);

 p = obs_properties_add_bool(ppts, "show_all",
        obs_module_text("ShowAll"));

 obs_property_set_modified_callback(p, show_all_services_toggled);

 obs_properties_add_list(ppts, "server", obs_module_text("Server"),
    OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

 obs_properties_add_text(ppts, "key", obs_module_text("StreamKey"),
    OBS_TEXT_PASSWORD);
 return ppts;
}
