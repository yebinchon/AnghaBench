
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int lstat (int ,struct stat*) ;

__attribute__((used)) static int pifs_getattr(const char *path, struct stat *buf)
{
  FULL_PATH(path);
  int ret = lstat(full_path, buf);
  buf->st_size /= 2;
  return ret == -1 ? -errno : ret;
}
