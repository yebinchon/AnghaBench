
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_worker_pool_s {scalar_t__ socket_acl; } ;


 int acl_free (scalar_t__) ;

int fpm_unix_free_socket_premissions(struct fpm_worker_pool_s *wp)
{





 return 0;
}
