
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int FULL_PATH (char const*) ;
 int S_IFDIR ;
 int errno ;
 int full_path ;
 int mkdir (int ,int) ;

__attribute__((used)) static int pifs_mkdir(const char *path, mode_t mode)
{
  FULL_PATH(path);
  int ret = mkdir(full_path, mode | S_IFDIR);
  return ret == -1 ? -errno : ret;
}
