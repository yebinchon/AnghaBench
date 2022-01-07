
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_worker_pool_s {TYPE_1__* config; int listening_socket; } ;
struct TYPE_4__ {int listening_socket; int max_requests; } ;
struct TYPE_3__ {int name; int pm_max_requests; } ;


 int FPM_EXIT_SOFTWARE ;
 int ZLOG_ERROR ;
 int dup (int ) ;
 int exit (int ) ;
 scalar_t__ fpm_env_init_child (struct fpm_worker_pool_s*) ;
 TYPE_2__ fpm_globals ;
 scalar_t__ fpm_log_init_child (struct fpm_worker_pool_s*) ;
 scalar_t__ fpm_php_init_child (struct fpm_worker_pool_s*) ;
 scalar_t__ fpm_signals_init_child () ;
 scalar_t__ fpm_status_init_child (struct fpm_worker_pool_s*) ;
 scalar_t__ fpm_stdio_init_child (struct fpm_worker_pool_s*) ;
 scalar_t__ fpm_unix_init_child (struct fpm_worker_pool_s*) ;
 int zlog (int ,char*,int ) ;

__attribute__((used)) static void fpm_child_init(struct fpm_worker_pool_s *wp)
{
 fpm_globals.max_requests = wp->config->pm_max_requests;
 fpm_globals.listening_socket = dup(wp->listening_socket);

 if (0 > fpm_stdio_init_child(wp) ||
     0 > fpm_log_init_child(wp) ||
     0 > fpm_status_init_child(wp) ||
     0 > fpm_unix_init_child(wp) ||
     0 > fpm_signals_init_child() ||
     0 > fpm_env_init_child(wp) ||
     0 > fpm_php_init_child(wp)) {

  zlog(ZLOG_ERROR, "[pool %s] child failed to initialize", wp->config->name);
  exit(FPM_EXIT_SOFTWARE);
 }
}
