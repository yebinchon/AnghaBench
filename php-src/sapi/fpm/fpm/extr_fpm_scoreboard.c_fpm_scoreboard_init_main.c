
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_worker_pool_s {TYPE_2__* config; TYPE_1__* scoreboard; struct fpm_worker_pool_s* next; } ;
struct fpm_scoreboard_s {int dummy; } ;
struct fpm_scoreboard_proc_s {int dummy; } ;
struct TYPE_4__ {int pm_max_children; int name; int pm; } ;
struct TYPE_3__ {unsigned int nprocs; int pool; int start_epoch; int pm; void** procs; } ;


 int HZ ;
 int ZLOG_DEBUG ;
 int ZLOG_ERROR ;
 int _SC_CLK_TCK ;
 int fpm_scoreboard_tick ;
 void* fpm_shm_alloc (size_t) ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int strlcpy (int ,int,int) ;
 int sysconf (int ) ;
 int time (int *) ;
 int zlog (int ,char*,int) ;

int fpm_scoreboard_init_main()
{
 struct fpm_worker_pool_s *wp;
 unsigned int i;
 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  size_t scoreboard_size, scoreboard_nprocs_size;
  void *shm_mem;

  if (wp->config->pm_max_children < 1) {
   zlog(ZLOG_ERROR, "[pool %s] Unable to create scoreboard SHM because max_client is not set", wp->config->name);
   return -1;
  }

  if (wp->scoreboard) {
   zlog(ZLOG_ERROR, "[pool %s] Unable to create scoreboard SHM because it already exists", wp->config->name);
   return -1;
  }

  scoreboard_size = sizeof(struct fpm_scoreboard_s) + (wp->config->pm_max_children) * sizeof(struct fpm_scoreboard_proc_s *);
  scoreboard_nprocs_size = sizeof(struct fpm_scoreboard_proc_s) * wp->config->pm_max_children;
  shm_mem = fpm_shm_alloc(scoreboard_size + scoreboard_nprocs_size);

  if (!shm_mem) {
   return -1;
  }
  wp->scoreboard = shm_mem;
  wp->scoreboard->nprocs = wp->config->pm_max_children;
  shm_mem += scoreboard_size;

  for (i = 0; i < wp->scoreboard->nprocs; i++, shm_mem += sizeof(struct fpm_scoreboard_proc_s)) {
   wp->scoreboard->procs[i] = shm_mem;
  }

  wp->scoreboard->pm = wp->config->pm;
  wp->scoreboard->start_epoch = time(((void*)0));
  strlcpy(wp->scoreboard->pool, wp->config->name, sizeof(wp->scoreboard->pool));
 }
 return 0;
}
