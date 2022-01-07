
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct fuse_file_info {scalar_t__ fh; } ;
typedef int DIR ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int * opendir (int ) ;

__attribute__((used)) static int pifs_opendir(const char *path, struct fuse_file_info *info)
{
  FULL_PATH(path);
  DIR *dir = opendir(full_path);
  info->fh = (uint64_t) dir;
  return !dir ? -errno : 0;
}
