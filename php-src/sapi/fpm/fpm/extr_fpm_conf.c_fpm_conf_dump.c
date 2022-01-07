
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct key_value_s {int value; int key; struct key_value_s* next; } ;
struct fpm_worker_pool_s {TYPE_1__* config; struct fpm_worker_pool_s* next; } ;
struct TYPE_6__ {int process_priority; int systemd_interval; int rlimit_core; int rlimit_files; int daemonize; int process_max; int process_control_timeout; int emergency_restart_threshold; int emergency_restart_interval; int log_limit; int log_buffering; int syslog_facility; int syslog_ident; int error_log; int pid_file; } ;
struct TYPE_5__ {int log_level; } ;
struct TYPE_4__ {int process_priority; struct key_value_s* php_admin_values; struct key_value_s* php_values; struct key_value_s* env; int security_limit_extensions; int clear_env; int decorate_workers_output; int catch_workers_output; int chdir; int chroot; int rlimit_core; int rlimit_files; int request_terminate_timeout_track_finished; int request_terminate_timeout; int request_slowlog_trace_depth; int request_slowlog_timeout; int slowlog; int access_format; int access_log; int ping_response; int ping_path; int pm_status_path; int pm_max_requests; int pm_process_idle_timeout; int pm_max_spare_servers; int pm_min_spare_servers; int pm_start_servers; int pm_max_children; int pm; int process_dumpable; int listen_allowed_clients; int listen_mode; int listen_group; int listen_owner; int listen_acl_groups; int listen_acl_users; int listen_backlog; int listen_address; int group; int user; int prefix; int name; } ;


 int BOOL2STR (int ) ;
 int PM2STR (int ) ;
 int STR2STR (int ) ;
 int ZLOG_NOTICE ;
 int fpm_event_machanism_name () ;
 TYPE_3__ fpm_global_config ;
 TYPE_2__ fpm_globals ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int zlog (int ,char*,...) ;
 int zlog_get_level_name (int ) ;

__attribute__((used)) static void fpm_conf_dump()
{
 struct fpm_worker_pool_s *wp;




 zlog(ZLOG_NOTICE, "[global]");
 zlog(ZLOG_NOTICE, "\tpid = %s", STR2STR(fpm_global_config.pid_file));
 zlog(ZLOG_NOTICE, "\terror_log = %s", STR2STR(fpm_global_config.error_log));




 zlog(ZLOG_NOTICE, "\tlog_buffering = %s", BOOL2STR(fpm_global_config.log_buffering));
 zlog(ZLOG_NOTICE, "\tlog_level = %s", zlog_get_level_name(fpm_globals.log_level));
 zlog(ZLOG_NOTICE, "\tlog_limit = %d", fpm_global_config.log_limit);
 zlog(ZLOG_NOTICE, "\temergency_restart_interval = %ds", fpm_global_config.emergency_restart_interval);
 zlog(ZLOG_NOTICE, "\temergency_restart_threshold = %d", fpm_global_config.emergency_restart_threshold);
 zlog(ZLOG_NOTICE, "\tprocess_control_timeout = %ds", fpm_global_config.process_control_timeout);
 zlog(ZLOG_NOTICE, "\tprocess.max = %d", fpm_global_config.process_max);
 if (fpm_global_config.process_priority == 64) {
  zlog(ZLOG_NOTICE, "\tprocess.priority = undefined");
 } else {
  zlog(ZLOG_NOTICE, "\tprocess.priority = %d", fpm_global_config.process_priority);
 }
 zlog(ZLOG_NOTICE, "\tdaemonize = %s", BOOL2STR(fpm_global_config.daemonize));
 zlog(ZLOG_NOTICE, "\trlimit_files = %d", fpm_global_config.rlimit_files);
 zlog(ZLOG_NOTICE, "\trlimit_core = %d", fpm_global_config.rlimit_core);
 zlog(ZLOG_NOTICE, "\tevents.mechanism = %s", fpm_event_machanism_name());



 zlog(ZLOG_NOTICE, " ");

 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  struct key_value_s *kv;
  if (!wp->config) continue;
  zlog(ZLOG_NOTICE, "[%s]", STR2STR(wp->config->name));
  zlog(ZLOG_NOTICE, "\tprefix = %s", STR2STR(wp->config->prefix));
  zlog(ZLOG_NOTICE, "\tuser = %s", STR2STR(wp->config->user));
  zlog(ZLOG_NOTICE, "\tgroup = %s", STR2STR(wp->config->group));
  zlog(ZLOG_NOTICE, "\tlisten = %s", STR2STR(wp->config->listen_address));
  zlog(ZLOG_NOTICE, "\tlisten.backlog = %d", wp->config->listen_backlog);




  zlog(ZLOG_NOTICE, "\tlisten.owner = %s", STR2STR(wp->config->listen_owner));
  zlog(ZLOG_NOTICE, "\tlisten.group = %s", STR2STR(wp->config->listen_group));
  zlog(ZLOG_NOTICE, "\tlisten.mode = %s", STR2STR(wp->config->listen_mode));
  zlog(ZLOG_NOTICE, "\tlisten.allowed_clients = %s", STR2STR(wp->config->listen_allowed_clients));
  if (wp->config->process_priority == 64) {
   zlog(ZLOG_NOTICE, "\tprocess.priority = undefined");
  } else {
   zlog(ZLOG_NOTICE, "\tprocess.priority = %d", wp->config->process_priority);
  }
  zlog(ZLOG_NOTICE, "\tprocess.dumpable = %s", BOOL2STR(wp->config->process_dumpable));
  zlog(ZLOG_NOTICE, "\tpm = %s", PM2STR(wp->config->pm));
  zlog(ZLOG_NOTICE, "\tpm.max_children = %d", wp->config->pm_max_children);
  zlog(ZLOG_NOTICE, "\tpm.start_servers = %d", wp->config->pm_start_servers);
  zlog(ZLOG_NOTICE, "\tpm.min_spare_servers = %d", wp->config->pm_min_spare_servers);
  zlog(ZLOG_NOTICE, "\tpm.max_spare_servers = %d", wp->config->pm_max_spare_servers);
  zlog(ZLOG_NOTICE, "\tpm.process_idle_timeout = %d", wp->config->pm_process_idle_timeout);
  zlog(ZLOG_NOTICE, "\tpm.max_requests = %d", wp->config->pm_max_requests);
  zlog(ZLOG_NOTICE, "\tpm.status_path = %s", STR2STR(wp->config->pm_status_path));
  zlog(ZLOG_NOTICE, "\tping.path = %s", STR2STR(wp->config->ping_path));
  zlog(ZLOG_NOTICE, "\tping.response = %s", STR2STR(wp->config->ping_response));
  zlog(ZLOG_NOTICE, "\taccess.log = %s", STR2STR(wp->config->access_log));
  zlog(ZLOG_NOTICE, "\taccess.format = %s", STR2STR(wp->config->access_format));
  zlog(ZLOG_NOTICE, "\tslowlog = %s", STR2STR(wp->config->slowlog));
  zlog(ZLOG_NOTICE, "\trequest_slowlog_timeout = %ds", wp->config->request_slowlog_timeout);
  zlog(ZLOG_NOTICE, "\trequest_slowlog_trace_depth = %d", wp->config->request_slowlog_trace_depth);
  zlog(ZLOG_NOTICE, "\trequest_terminate_timeout = %ds", wp->config->request_terminate_timeout);
  zlog(ZLOG_NOTICE, "\trequest_terminate_timeout_track_finished = %s", BOOL2STR(wp->config->request_terminate_timeout_track_finished));
  zlog(ZLOG_NOTICE, "\trlimit_files = %d", wp->config->rlimit_files);
  zlog(ZLOG_NOTICE, "\trlimit_core = %d", wp->config->rlimit_core);
  zlog(ZLOG_NOTICE, "\tchroot = %s", STR2STR(wp->config->chroot));
  zlog(ZLOG_NOTICE, "\tchdir = %s", STR2STR(wp->config->chdir));
  zlog(ZLOG_NOTICE, "\tcatch_workers_output = %s", BOOL2STR(wp->config->catch_workers_output));
  zlog(ZLOG_NOTICE, "\tdecorate_workers_output = %s", BOOL2STR(wp->config->decorate_workers_output));
  zlog(ZLOG_NOTICE, "\tclear_env = %s", BOOL2STR(wp->config->clear_env));
  zlog(ZLOG_NOTICE, "\tsecurity.limit_extensions = %s", wp->config->security_limit_extensions);

  for (kv = wp->config->env; kv; kv = kv->next) {
   zlog(ZLOG_NOTICE, "\tenv[%s] = %s", kv->key, kv->value);
  }

  for (kv = wp->config->php_values; kv; kv = kv->next) {
   zlog(ZLOG_NOTICE, "\tphp_value[%s] = %s", kv->key, kv->value);
  }

  for (kv = wp->config->php_admin_values; kv; kv = kv->next) {
   zlog(ZLOG_NOTICE, "\tphp_admin_value[%s] = %s", kv->key, kv->value);
  }
  zlog(ZLOG_NOTICE, " ");
 }
}
