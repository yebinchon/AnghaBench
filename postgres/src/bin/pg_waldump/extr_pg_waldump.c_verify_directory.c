
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char const*) ;

__attribute__((used)) static bool
verify_directory(const char *directory)
{
 DIR *dir = opendir(directory);

 if (dir == ((void*)0))
  return 0;
 closedir(dir);
 return 1;
}
