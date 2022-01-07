
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {int cache_package; } ;
struct file_update_data {int version; int name; int found; scalar_t__ newer; } ;
typedef int obs_data_t ;


 int copy_local_to_cache (struct update_info*,int ) ;
 int enum_files (int ,int ,struct file_update_data*) ;
 int newer_than_cache ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_data_get_string (int *,char*) ;

__attribute__((used)) static bool update_files_to_local(void *param, obs_data_t *local_file)
{
 struct update_info *info = param;
 struct file_update_data data = {
  .name = obs_data_get_string(local_file, "name"),
  .version = (int)obs_data_get_int(local_file, "version")};

 enum_files(info->cache_package, newer_than_cache, &data);
 if (data.newer || !data.found)
  copy_local_to_cache(info, data.name);

 return 1;
}
