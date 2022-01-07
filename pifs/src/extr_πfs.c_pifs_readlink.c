
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int readlink (int ,char*,size_t) ;

__attribute__((used)) static int pifs_readlink(const char *path, char *buf, size_t bufsiz)
{
  FULL_PATH(path);
  int ret = readlink(full_path, buf, bufsiz - 1);
  if (ret == -1) {
    return -errno;
  }

  buf[ret] = '\0';
  return 0;
}
