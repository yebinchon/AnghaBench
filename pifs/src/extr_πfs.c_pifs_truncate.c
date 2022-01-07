
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int FULL_PATH (char const*) ;
 int errno ;
 int full_path ;
 int truncate (int ,int) ;

__attribute__((used)) static int pifs_truncate(const char *path, off_t length)
{
  FULL_PATH(path);
  int ret = truncate(full_path, length * 2);
  return ret == -1 ? -errno : ret;
}
