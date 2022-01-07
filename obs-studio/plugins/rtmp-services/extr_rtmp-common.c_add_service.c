
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int json_t ;


 int LOG_WARNING ;
 int blog (int ,char*,...) ;
 int get_bool_val (int *,char*) ;
 char* get_string_val (int *,char*) ;
 int json_is_array (int *) ;
 int json_is_object (int *) ;
 int * json_object_get (int *,char*) ;
 int obs_property_list_add_string (int *,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void add_service(obs_property_t *list, json_t *service, bool show_all,
   const char *cur_service)
{
 json_t *servers;
 const char *name;
 bool common;

 if (!json_is_object(service)) {
  blog(LOG_WARNING, "rtmp-common.c: [add_service] service "
      "is not an object");
  return;
 }

 name = get_string_val(service, "name");
 if (!name) {
  blog(LOG_WARNING, "rtmp-common.c: [add_service] service "
      "has no name");
  return;
 }

 common = get_bool_val(service, "common");
 if (!show_all && !common && strcmp(cur_service, name) != 0) {
  return;
 }

 servers = json_object_get(service, "servers");
 if (!servers || !json_is_array(servers)) {
  blog(LOG_WARNING,
       "rtmp-common.c: [add_service] service "
       "'%s' has no servers",
       name);
  return;
 }

 obs_property_list_add_string(list, name, name);
}
