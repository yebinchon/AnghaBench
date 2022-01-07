
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info {scalar_t__ etag_remote; scalar_t__ etag_local; int temp; } ;


 int bfree (scalar_t__) ;
 int init_update (struct update_info*) ;
 int os_rmdir (int ) ;
 int update_local_version (struct update_info*) ;
 int update_remote_version (struct update_info*,int) ;

__attribute__((used)) static void *update_thread(void *data)
{
 struct update_info *info = data;
 int cur_version;

 if (!init_update(info))
  return ((void*)0);

 cur_version = update_local_version(info);
 update_remote_version(info, cur_version);
 os_rmdir(info->temp);

 if (info->etag_local)
  bfree(info->etag_local);
 if (info->etag_remote)
  bfree(info->etag_remote);

 return ((void*)0);
}
