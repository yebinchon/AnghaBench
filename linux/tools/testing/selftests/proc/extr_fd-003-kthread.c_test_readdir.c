
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int assert (int) ;
 int * fdopendir (int) ;
 int streq (int ,char*) ;
 struct dirent* xreaddir (int *) ;

__attribute__((used)) static void test_readdir(int fd)
{
 DIR *d;
 struct dirent *de;

 d = fdopendir(fd);
 assert(d);

 de = xreaddir(d);
 assert(streq(de->d_name, "."));
 assert(de->d_type == DT_DIR);

 de = xreaddir(d);
 assert(streq(de->d_name, ".."));
 assert(de->d_type == DT_DIR);

 de = xreaddir(d);
 assert(!de);
}
