
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int FULL_PATH (char const*) ;
 int chmod (int ,int ) ;
 int errno ;
 int full_path ;

__attribute__((used)) static int pifs_chmod(const char *path, mode_t mode)
{
  FULL_PATH(path);
  int ret = chmod(full_path, mode);
  return ret == -1 ? -errno : ret;
}
