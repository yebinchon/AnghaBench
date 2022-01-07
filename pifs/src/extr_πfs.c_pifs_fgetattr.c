
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct fuse_file_info {int fh; } ;


 int errno ;
 int fstat (int ,struct stat*) ;

__attribute__((used)) static int pifs_fgetattr(const char *path, struct stat *buf,
                        struct fuse_file_info *info)
{
  int ret = fstat(info->fh, buf);
  return ret == -1 ? -errno : ret;
}
