
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFDIR ;
 int S_IFMT ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int fpm_conf_is_dir(char *path)
{
 struct stat sb;

 if (stat(path, &sb) != 0) {
  return 0;
 }

 return (sb.st_mode & S_IFMT) == S_IFDIR;
}
