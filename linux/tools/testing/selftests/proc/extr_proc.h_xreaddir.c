
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int dummy; } ;
typedef int DIR ;


 int assert (int ) ;
 scalar_t__ errno ;
 struct dirent* readdir (int *) ;

__attribute__((used)) static struct dirent *xreaddir(DIR *d)
{
 struct dirent *de;

 errno = 0;
 de = readdir(d);
 assert(de || errno == 0);
 return de;
}
