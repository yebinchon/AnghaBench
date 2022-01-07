
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int fh; } ;


 int errno ;
 int fdatasync (int ) ;
 int fsync (int ) ;

__attribute__((used)) static int pifs_fsync(const char *path, int datasync,
                      struct fuse_file_info *info)
{
  int ret = datasync ? fdatasync(info->fh) : fsync(info->fh);
  return ret == -1 ? -errno : ret;
}
