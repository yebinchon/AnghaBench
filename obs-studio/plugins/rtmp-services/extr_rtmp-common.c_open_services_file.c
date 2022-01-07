
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int bfree (char*) ;
 char* obs_module_config_path (char*) ;
 char* obs_module_file (char*) ;
 int * open_json_file (char*) ;

__attribute__((used)) static json_t *open_services_file(void)
{
 char *file;
 json_t *root = ((void*)0);

 file = obs_module_config_path("services.json");
 if (file) {
  root = open_json_file(file);
  bfree(file);
 }

 if (!root) {
  file = obs_module_file("services.json");
  if (file) {
   root = open_json_file(file);
   bfree(file);
  }
 }

 return root;
}
