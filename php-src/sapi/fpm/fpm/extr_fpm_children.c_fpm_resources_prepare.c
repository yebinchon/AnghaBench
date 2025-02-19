
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int scoreboard; TYPE_1__* config; } ;
struct fpm_child_s {int fd_stdout; int fd_stderr; int scoreboard_i; struct fpm_worker_pool_s* wp; } ;
struct TYPE_2__ {int name; } ;


 int ZLOG_ERROR ;
 struct fpm_child_s* fpm_child_alloc () ;
 int fpm_child_free (struct fpm_child_s*) ;
 scalar_t__ fpm_scoreboard_proc_alloc (int ,int *) ;
 int fpm_stdio_discard_pipes (struct fpm_child_s*) ;
 scalar_t__ fpm_stdio_prepare_pipes (struct fpm_child_s*) ;
 int zlog (int ,char*,int ) ;

__attribute__((used)) static struct fpm_child_s *fpm_resources_prepare(struct fpm_worker_pool_s *wp)
{
 struct fpm_child_s *c;

 c = fpm_child_alloc();

 if (!c) {
  zlog(ZLOG_ERROR, "[pool %s] unable to malloc new child", wp->config->name);
  return 0;
 }

 c->wp = wp;
 c->fd_stdout = -1; c->fd_stderr = -1;

 if (0 > fpm_stdio_prepare_pipes(c)) {
  fpm_child_free(c);
  return 0;
 }

 if (0 > fpm_scoreboard_proc_alloc(wp->scoreboard, &c->scoreboard_i)) {
  fpm_stdio_discard_pipes(c);
  fpm_child_free(c);
  return 0;
 }

 return c;
}
