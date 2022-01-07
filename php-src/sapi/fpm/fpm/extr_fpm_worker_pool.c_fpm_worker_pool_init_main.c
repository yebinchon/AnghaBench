
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPM_CLEANUP_ALL ;
 scalar_t__ fpm_cleanup_add (int ,int ,int ) ;
 int fpm_worker_pool_cleanup ;

int fpm_worker_pool_init_main()
{
 if (0 > fpm_cleanup_add(FPM_CLEANUP_ALL, fpm_worker_pool_cleanup, 0)) {
  return -1;
 }
 return 0;
}
