
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int bfree (char*) ;
 int * obs_data_create_from_json (char*) ;
 char* os_quick_read_utf8_file (char const*) ;

obs_data_t *obs_data_create_from_json_file(const char *json_file)
{
 char *file_data = os_quick_read_utf8_file(json_file);
 obs_data_t *data = ((void*)0);

 if (file_data) {
  data = obs_data_create_from_json(file_data);
  bfree(file_data);
 }

 return data;
}
