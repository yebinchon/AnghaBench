
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ os_file_exists (char const*) ;
 int rename (char const*,char const*) ;

int os_safe_replace(const char *target, const char *from, const char *backup)
{
 if (backup && os_file_exists(target) && rename(target, backup) != 0)
  return -1;
 return rename(from, target);
}
