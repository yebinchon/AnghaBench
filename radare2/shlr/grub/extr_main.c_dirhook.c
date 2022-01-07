
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_dirhook_info {int mtime; scalar_t__ dir; } ;


 int printf (char*,char,int,char const*) ;

int dirhook (const char *filename, const struct grub_dirhook_info *info, void *closure) {


 printf ("DIRFILE: %c (%d) %s\n", info->dir?'d':'f',
  info->mtime, filename);
 return 0;
}
