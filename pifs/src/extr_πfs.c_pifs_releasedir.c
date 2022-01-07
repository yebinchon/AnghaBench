
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {scalar_t__ fh; } ;
typedef int DIR ;


 int closedir (int *) ;
 int errno ;

__attribute__((used)) static int pifs_releasedir(const char *path, struct fuse_file_info *info)
{
  int ret = closedir((DIR *)info->fh);
  return ret == -1 ? -errno : ret;
}
