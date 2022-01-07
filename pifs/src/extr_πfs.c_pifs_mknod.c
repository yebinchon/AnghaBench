
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int dev_t ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int mknod (int ,int ,int ) ;

__attribute__((used)) static int pifs_mknod(const char *path, mode_t mode, dev_t dev)
{
  FULL_PATH(path);
  int ret = mknod(full_path, mode, dev);
  return ret == -1 ? -errno : ret;
}
