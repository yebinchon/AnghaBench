
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int fh; int flags; } ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int open (int ,int ) ;

__attribute__((used)) static int pifs_open(const char *path, struct fuse_file_info *info)
{
  FULL_PATH(path);
  int ret = open(full_path, info->flags);
  info->fh = ret;
  return ret == -1 ? -errno : 0;
}
