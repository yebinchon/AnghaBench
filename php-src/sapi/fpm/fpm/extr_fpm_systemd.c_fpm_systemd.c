
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpm_worker_pool_s {TYPE_1__* scoreboard; struct fpm_worker_pool_s* next; } ;
struct TYPE_4__ {float systemd_interval; scalar_t__ systemd_watchdog; } ;
struct TYPE_3__ {scalar_t__ slow_rq; scalar_t__ requests; scalar_t__ idle; scalar_t__ active; } ;


 int ZLOG_NOTICE ;
 TYPE_2__ fpm_global_config ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 scalar_t__ sd_notifyf (int ,char*,char*,int,int,unsigned long,unsigned long,float) ;
 int zlog (int ,char*) ;

__attribute__((used)) static void fpm_systemd()
{
 static unsigned long int last=0;
 struct fpm_worker_pool_s *wp;
 unsigned long int requests=0, slow_req=0;
 int active=0, idle=0;


 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (wp->scoreboard) {
   active += wp->scoreboard->active;
   idle += wp->scoreboard->idle;
   requests += wp->scoreboard->requests;
   slow_req += wp->scoreboard->slow_rq;
  }
 }







 if (0 > sd_notifyf(0, "READY=1\n%s"
    "STATUS=Processes active: %d, idle: %d, Requests: %lu, slow: %lu, Traffic: %.3greq/sec",
    fpm_global_config.systemd_watchdog ? "WATCHDOG=1\n" : "",
    active, idle, requests, slow_req, ((float)requests - last) * 1000.0 / fpm_global_config.systemd_interval)) {
  zlog(ZLOG_NOTICE, "failed to notify status to systemd");
 }

 last = requests;
}
