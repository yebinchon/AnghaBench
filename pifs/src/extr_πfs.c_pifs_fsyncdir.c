
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {scalar_t__ fh; } ;
typedef int DIR ;


 int dirfd (int *) ;
 int errno ;
 int fdatasync (int) ;
 int fsync (int) ;

__attribute__((used)) static int pifs_fsyncdir(const char *path, int datasync,
                         struct fuse_file_info *info)
{
  int fd = dirfd((DIR *)info->fh);
  if (fd == -1) {
    return -errno;
  }

  int ret = datasync ? fdatasync(fd) : fsync(fd);
  return ret == -1 ? -errno : ret;
}
