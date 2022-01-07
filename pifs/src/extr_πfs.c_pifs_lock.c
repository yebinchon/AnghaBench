
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int fh; } ;
struct flock {int dummy; } ;


 int errno ;
 int fcntl (int ,int,struct flock*) ;

__attribute__((used)) static int pifs_lock(const char *path, struct fuse_file_info *info, int cmd,
                     struct flock *lock)
{
  int ret = fcntl(info->fh, cmd, lock);
  return ret == -1 ? -errno : ret;
}
