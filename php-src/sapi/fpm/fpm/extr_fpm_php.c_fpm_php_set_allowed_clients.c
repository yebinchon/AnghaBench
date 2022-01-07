
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {scalar_t__ listen_address_domain; TYPE_1__* config; } ;
struct TYPE_2__ {int listen_allowed_clients; } ;


 scalar_t__ FPM_AF_INET ;
 int fcgi_set_allowed_clients (int ) ;

__attribute__((used)) static int fpm_php_set_allowed_clients(struct fpm_worker_pool_s *wp)
{
 if (wp->listen_address_domain == FPM_AF_INET) {
  fcgi_set_allowed_clients(wp->config->listen_allowed_clients);
 }
 return 0;
}
