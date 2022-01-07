
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static bool
directory_exists(const char *dir)
{
 struct stat st;

 if (stat(dir, &st) != 0)
  return 0;
 if (S_ISDIR(st.st_mode))
  return 1;
 return 0;
}
