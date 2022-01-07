
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file_info {unsigned int num_fences; scalar_t__ sync_fence_info; } ;
struct sync_fence_info {int status; } ;


 struct sync_file_info* sync_file_info (int) ;
 int sync_file_info_free (struct sync_file_info*) ;

int sync_fence_count_with_status(int fd, int status)
{
 unsigned int i, count = 0;
 struct sync_fence_info *fence_info = ((void*)0);
 struct sync_file_info *info = sync_file_info(fd);

 if (!info)
  return -1;

 fence_info = (struct sync_fence_info *)info->sync_fence_info;
 for (i = 0 ; i < info->num_fences ; i++) {
  if (fence_info[i].status == status)
   count++;
 }

 sync_file_info_free(info);

 return count;
}
