
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_update_data {int found; int newer; int version; int name; } ;
typedef int obs_data_t ;


 scalar_t__ obs_data_get_int (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool newer_than_cache(void *param, obs_data_t *cache_file)
{
 struct file_update_data *input = param;
 const char *name = obs_data_get_string(cache_file, "name");
 int version = (int)obs_data_get_int(cache_file, "version");

 if (strcmp(input->name, name) == 0) {
  input->found = 1;
  input->newer = input->version > version;
  return 0;
 }

 return 1;
}
