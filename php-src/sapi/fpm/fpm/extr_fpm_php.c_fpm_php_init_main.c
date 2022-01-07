
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPM_CLEANUP_PARENT ;
 scalar_t__ fpm_cleanup_add (int ,int ,int ) ;
 int fpm_php_cleanup ;

int fpm_php_init_main()
{
 if (0 > fpm_cleanup_add(FPM_CLEANUP_PARENT, fpm_php_cleanup, 0)) {
  return -1;
 }
 return 0;
}
