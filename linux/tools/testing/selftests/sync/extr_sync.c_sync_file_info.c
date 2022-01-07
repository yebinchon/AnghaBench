
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct sync_file_info {int num_fences; scalar_t__ sync_fence_info; scalar_t__ flags; } ;
struct sync_fence_info {int num_fences; scalar_t__ sync_fence_info; scalar_t__ flags; } ;


 int SYNC_IOC_FILE_INFO ;
 struct sync_file_info* calloc (int,int) ;
 int free (struct sync_file_info*) ;
 int ioctl (int,int ,struct sync_file_info*) ;

__attribute__((used)) static struct sync_file_info *sync_file_info(int fd)
{
 struct sync_file_info *info;
 struct sync_fence_info *fence_info;
 int err, num_fences;

 info = calloc(1, sizeof(*info));
 if (info == ((void*)0))
  return ((void*)0);

 err = ioctl(fd, SYNC_IOC_FILE_INFO, info);
 if (err < 0) {
  free(info);
  return ((void*)0);
 }

 num_fences = info->num_fences;

 if (num_fences) {
  info->flags = 0;
  info->num_fences = num_fences;

  fence_info = calloc(num_fences, sizeof(*fence_info));
  if (!fence_info) {
   free(info);
   return ((void*)0);
  }

  info->sync_fence_info = (uint64_t)fence_info;

  err = ioctl(fd, SYNC_IOC_FILE_INFO, info);
  if (err < 0) {
   free(fence_info);
   free(info);
   return ((void*)0);
  }
 }

 return info;
}
