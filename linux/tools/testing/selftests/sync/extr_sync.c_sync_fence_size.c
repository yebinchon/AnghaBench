
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file_info {int num_fences; } ;


 struct sync_file_info* sync_file_info (int) ;
 int sync_file_info_free (struct sync_file_info*) ;

int sync_fence_size(int fd)
{
 int count;
 struct sync_file_info *info = sync_file_info(fd);

 if (!info)
  return 0;

 count = info->num_fences;

 sync_file_info_free(info);

 return count;
}
