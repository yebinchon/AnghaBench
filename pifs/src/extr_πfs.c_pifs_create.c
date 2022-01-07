
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int fh; } ;
typedef int mode_t ;


 int FULL_PATH (char const*) ;
 int creat (int ,int ) ;
 int errno ;
 int full_path ;

__attribute__((used)) static int pifs_create(const char *path, mode_t mode,
                       struct fuse_file_info *info)
{
  FULL_PATH(path);
  int ret = creat(full_path, mode);
  info->fh = ret;
  return ret == -1 ? -errno : 0;
}
