
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {int temp; int cache; int local; } ;


 int bfree (char*) ;
 char* get_path (int ,char const*) ;
 int os_copyfile (char*,char*) ;
 int os_rename (char*,char*) ;
 int os_unlink (char*) ;

__attribute__((used)) static void copy_local_to_cache(struct update_info *info, const char *file)
{
 char *local_file_path = get_path(info->local, file);
 char *cache_file_path = get_path(info->cache, file);
 char *temp_file_path = get_path(info->temp, file);

 os_copyfile(local_file_path, temp_file_path);
 os_unlink(cache_file_path);
 os_rename(temp_file_path, cache_file_path);

 bfree(local_file_path);
 bfree(cache_file_path);
 bfree(temp_file_path);
}
