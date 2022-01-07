
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int fh; } ;
typedef int off_t ;


 int errno ;
 int ftruncate (int ,int) ;

__attribute__((used)) static int pifs_ftruncate(const char *path, off_t length,
                          struct fuse_file_info *info)
{
  int ret = ftruncate(info->fh, length * 2);
  return ret == -1 ? -errno : ret;
}
