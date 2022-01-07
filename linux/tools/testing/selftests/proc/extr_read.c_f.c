
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_type; int d_name; } ;
typedef int DIR ;





 int O_DIRECTORY ;
 int O_RDONLY ;
 int assert (int) ;
 int closedir (int *) ;
 int dirfd (int *) ;
 int f_lnk (int *,int ) ;
 int f_reg (int *,int ) ;
 int f_reg_write (int *,int ,char*,int) ;
 int * fdopendir (int) ;
 int openat (int ,int ,int) ;
 int streq (int ,char*) ;
 struct dirent* xreaddir (int *) ;

__attribute__((used)) static void f(DIR *d, unsigned int level)
{
 struct dirent *de;

 de = xreaddir(d);
 assert(de->d_type == 130);
 assert(streq(de->d_name, "."));

 de = xreaddir(d);
 assert(de->d_type == 130);
 assert(streq(de->d_name, ".."));

 while ((de = xreaddir(d))) {
  assert(!streq(de->d_name, "."));
  assert(!streq(de->d_name, ".."));

  switch (de->d_type) {
   DIR *dd;
   int fd;

  case 128:
   if (level == 0 && streq(de->d_name, "sysrq-trigger")) {
    f_reg_write(d, de->d_name, "h", 1);
   } else if (level == 1 && streq(de->d_name, "clear_refs")) {
    f_reg_write(d, de->d_name, "1", 1);
   } else if (level == 3 && streq(de->d_name, "clear_refs")) {
    f_reg_write(d, de->d_name, "1", 1);
   } else {
    f_reg(d, de->d_name);
   }
   break;
  case 130:
   fd = openat(dirfd(d), de->d_name, O_DIRECTORY|O_RDONLY);
   if (fd == -1)
    continue;
   dd = fdopendir(fd);
   if (!dd)
    continue;
   f(dd, level + 1);
   closedir(dd);
   break;
  case 129:
   f_lnk(d, de->d_name);
   break;
  default:
   assert(0);
  }
 }
}
