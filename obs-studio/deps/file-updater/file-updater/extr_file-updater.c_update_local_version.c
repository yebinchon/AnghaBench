
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {int local_package; int cache_package; } ;


 int copy_local_to_cache (struct update_info*,char*) ;
 int enum_files (int ,int ,struct update_info*) ;
 int obs_data_addref (int ) ;
 scalar_t__ obs_data_get_int (int ,char*) ;
 int obs_data_release (int ) ;
 int update_files_to_local ;

__attribute__((used)) static int update_local_version(struct update_info *info)
{
 int local_version;
 int cache_version = 0;

 local_version = (int)obs_data_get_int(info->local_package, "version");
 cache_version = (int)obs_data_get_int(info->cache_package, "version");


 if (cache_version < local_version) {
  enum_files(info->local_package, update_files_to_local, info);
  copy_local_to_cache(info, "package.json");

  obs_data_release(info->cache_package);
  obs_data_addref(info->local_package);
  info->cache_package = info->local_package;

  return local_version;
 }

 return cache_version;
}
