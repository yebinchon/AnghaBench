
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;
typedef int json_t ;


 int fill_servers (int *,int *,char const*) ;
 int * find_service (int *,char const*,char const**) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_data_set_string (int *,char*,char const*) ;
 int * obs_properties_get (int *,char*) ;
 int * obs_properties_get_param (int *) ;
 int obs_property_list_insert_string (int *,int ,char const*,char const*) ;
 int obs_property_list_item_disable (int *,int ,int) ;

__attribute__((used)) static bool service_selected(obs_properties_t *props, obs_property_t *p,
        obs_data_t *settings)
{
 const char *name = obs_data_get_string(settings, "service");
 json_t *root = obs_properties_get_param(props);
 json_t *service;
 const char *new_name;

 if (!name || !*name)
  return 0;

 service = find_service(root, name, &new_name);
 if (!service) {
  const char *server = obs_data_get_string(settings, "server");

  obs_property_list_insert_string(p, 0, name, name);
  obs_property_list_item_disable(p, 0, 1);

  p = obs_properties_get(props, "server");
  obs_property_list_insert_string(p, 0, server, server);
  obs_property_list_item_disable(p, 0, 1);
  return 1;
 }
 if (new_name) {
  name = new_name;
  obs_data_set_string(settings, "service", name);
 }

 fill_servers(obs_properties_get(props, "server"), service, name);

 return 1;
}
