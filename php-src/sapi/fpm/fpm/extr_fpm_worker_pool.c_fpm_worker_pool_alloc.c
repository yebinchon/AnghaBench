
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {int idle_spawn_rate; int log_fd; } ;


 struct fpm_worker_pool_s* malloc (int) ;
 int memset (struct fpm_worker_pool_s*,int ,int) ;

struct fpm_worker_pool_s *fpm_worker_pool_alloc()
{
 struct fpm_worker_pool_s *ret;

 ret = malloc(sizeof(struct fpm_worker_pool_s));
 if (!ret) {
  return 0;
 }

 memset(ret, 0, sizeof(struct fpm_worker_pool_s));

 ret->idle_spawn_rate = 1;
 ret->log_fd = -1;
 return ret;
}
