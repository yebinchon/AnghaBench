
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int bfree (char*) ;
 char* get_path (char const*,char const*) ;
 int * obs_data_create_from_json_file (char*) ;

__attribute__((used)) static inline obs_data_t *get_package(const char *base_path, const char *file)
{
 char *full_path = get_path(base_path, file);
 obs_data_t *package = obs_data_create_from_json_file(full_path);
 bfree(full_path);
 return package;
}
