
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {scalar_t__ fh; } ;
struct dirent {int d_off; int d_name; } ;
typedef int off_t ;
typedef int (* fuse_fill_dir_t ) (void*,int ,int *,int ) ;
typedef int DIR ;


 int errno ;
 struct dirent* readdir (int *) ;
 int seekdir (int *,int ) ;

__attribute__((used)) static int pifs_readdir(const char *path, void *buf, fuse_fill_dir_t filler,
                       off_t offset, struct fuse_file_info *info)
{
  DIR *dir = (DIR *) info->fh;
  if (offset) {
    seekdir(dir, offset);
  }

  int ret;
  do {
    errno = 0;
    struct dirent *de = readdir(dir);
    if (!de) {
      if (errno) {
        return -errno;
      } else {
        break;
      }
    }

    ret = filler(buf, de->d_name, ((void*)0), de->d_off);
  } while (ret == 0);

  return 0;
}
