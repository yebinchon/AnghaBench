
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rename (char const*,char const*) ;

int os_rename(const char *old_path, const char *new_path)
{
 return rename(old_path, new_path);
}
