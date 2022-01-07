
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int dummy; } ;
typedef int DIR ;


 int ERROR ;
 struct dirent* ReadDirExtended (int *,char const*,int ) ;

struct dirent *
ReadDir(DIR *dir, const char *dirname)
{
 return ReadDirExtended(dir, dirname, ERROR);
}
