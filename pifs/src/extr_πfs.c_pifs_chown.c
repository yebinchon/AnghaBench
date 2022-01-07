
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int FULL_PATH (char const*) ;
 int chown (int ,int ,int ) ;
 int errno ;
 int full_path ;

__attribute__((used)) static int pifs_chown(const char *path, uid_t owner, gid_t group)
{
  FULL_PATH(path);
  int ret = chown(full_path, owner, group);
  return ret == -1 ? -errno : ret;
}
