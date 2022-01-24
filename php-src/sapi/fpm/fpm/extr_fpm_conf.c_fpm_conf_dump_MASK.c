#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct key_value_s {int /*<<< orphan*/  value; int /*<<< orphan*/  key; struct key_value_s* next; } ;
struct fpm_worker_pool_s {TYPE_1__* config; struct fpm_worker_pool_s* next; } ;
struct TYPE_6__ {int process_priority; int systemd_interval; int /*<<< orphan*/  rlimit_core; int /*<<< orphan*/  rlimit_files; int /*<<< orphan*/  daemonize; int /*<<< orphan*/  process_max; int /*<<< orphan*/  process_control_timeout; int /*<<< orphan*/  emergency_restart_threshold; int /*<<< orphan*/  emergency_restart_interval; int /*<<< orphan*/  log_limit; int /*<<< orphan*/  log_buffering; int /*<<< orphan*/  syslog_facility; int /*<<< orphan*/  syslog_ident; int /*<<< orphan*/  error_log; int /*<<< orphan*/  pid_file; } ;
struct TYPE_5__ {int /*<<< orphan*/  log_level; } ;
struct TYPE_4__ {int process_priority; struct key_value_s* php_admin_values; struct key_value_s* php_values; struct key_value_s* env; int /*<<< orphan*/  security_limit_extensions; int /*<<< orphan*/  clear_env; int /*<<< orphan*/  decorate_workers_output; int /*<<< orphan*/  catch_workers_output; int /*<<< orphan*/  chdir; int /*<<< orphan*/  chroot; int /*<<< orphan*/  rlimit_core; int /*<<< orphan*/  rlimit_files; int /*<<< orphan*/  request_terminate_timeout_track_finished; int /*<<< orphan*/  request_terminate_timeout; int /*<<< orphan*/  request_slowlog_trace_depth; int /*<<< orphan*/  request_slowlog_timeout; int /*<<< orphan*/  slowlog; int /*<<< orphan*/  access_format; int /*<<< orphan*/  access_log; int /*<<< orphan*/  ping_response; int /*<<< orphan*/  ping_path; int /*<<< orphan*/  pm_status_path; int /*<<< orphan*/  pm_max_requests; int /*<<< orphan*/  pm_process_idle_timeout; int /*<<< orphan*/  pm_max_spare_servers; int /*<<< orphan*/  pm_min_spare_servers; int /*<<< orphan*/  pm_start_servers; int /*<<< orphan*/  pm_max_children; int /*<<< orphan*/  pm; int /*<<< orphan*/  process_dumpable; int /*<<< orphan*/  listen_allowed_clients; int /*<<< orphan*/  listen_mode; int /*<<< orphan*/  listen_group; int /*<<< orphan*/  listen_owner; int /*<<< orphan*/  listen_acl_groups; int /*<<< orphan*/  listen_acl_users; int /*<<< orphan*/  listen_backlog; int /*<<< orphan*/  listen_address; int /*<<< orphan*/  group; int /*<<< orphan*/  user; int /*<<< orphan*/  prefix; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ fpm_global_config ; 
 TYPE_2__ fpm_globals ; 
 struct fpm_worker_pool_s* fpm_worker_all_pools ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6() /* {{{ */
{
	struct fpm_worker_pool_s *wp;

	/*
	 * Please keep the same order as in fpm_conf.h and in php-fpm.conf.in
	 */
	FUNC4(ZLOG_NOTICE, "[global]");
	FUNC4(ZLOG_NOTICE, "\tpid = %s",                         FUNC2(fpm_global_config.pid_file));
	FUNC4(ZLOG_NOTICE, "\terror_log = %s",                   FUNC2(fpm_global_config.error_log));
#ifdef HAVE_SYSLOG_H
	zlog(ZLOG_NOTICE, "\tsyslog.ident = %s",                STR2STR(fpm_global_config.syslog_ident));
	zlog(ZLOG_NOTICE, "\tsyslog.facility = %d",             fpm_global_config.syslog_facility); /* FIXME: convert to string */
#endif
	FUNC4(ZLOG_NOTICE, "\tlog_buffering = %s",               FUNC0(fpm_global_config.log_buffering));
	FUNC4(ZLOG_NOTICE, "\tlog_level = %s",                   FUNC5(fpm_globals.log_level));
	FUNC4(ZLOG_NOTICE, "\tlog_limit = %d",                   fpm_global_config.log_limit);
	FUNC4(ZLOG_NOTICE, "\temergency_restart_interval = %ds", fpm_global_config.emergency_restart_interval);
	FUNC4(ZLOG_NOTICE, "\temergency_restart_threshold = %d", fpm_global_config.emergency_restart_threshold);
	FUNC4(ZLOG_NOTICE, "\tprocess_control_timeout = %ds",    fpm_global_config.process_control_timeout);
	FUNC4(ZLOG_NOTICE, "\tprocess.max = %d",                 fpm_global_config.process_max);
	if (fpm_global_config.process_priority == 64) {
		FUNC4(ZLOG_NOTICE, "\tprocess.priority = undefined");
	} else {
		FUNC4(ZLOG_NOTICE, "\tprocess.priority = %d", fpm_global_config.process_priority);
	}
	FUNC4(ZLOG_NOTICE, "\tdaemonize = %s",                   FUNC0(fpm_global_config.daemonize));
	FUNC4(ZLOG_NOTICE, "\trlimit_files = %d",                fpm_global_config.rlimit_files);
	FUNC4(ZLOG_NOTICE, "\trlimit_core = %d",                 fpm_global_config.rlimit_core);
	FUNC4(ZLOG_NOTICE, "\tevents.mechanism = %s",            FUNC3());
#ifdef HAVE_SYSTEMD
	zlog(ZLOG_NOTICE, "\tsystemd_interval = %ds",           fpm_global_config.systemd_interval/1000);
#endif
	FUNC4(ZLOG_NOTICE, " ");

	for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
		struct key_value_s *kv;
		if (!wp->config) continue;
		FUNC4(ZLOG_NOTICE, "[%s]",                              FUNC2(wp->config->name));
		FUNC4(ZLOG_NOTICE, "\tprefix = %s",                     FUNC2(wp->config->prefix));
		FUNC4(ZLOG_NOTICE, "\tuser = %s",                       FUNC2(wp->config->user));
		FUNC4(ZLOG_NOTICE, "\tgroup = %s",                      FUNC2(wp->config->group));
		FUNC4(ZLOG_NOTICE, "\tlisten = %s",                     FUNC2(wp->config->listen_address));
		FUNC4(ZLOG_NOTICE, "\tlisten.backlog = %d",             wp->config->listen_backlog);
#ifdef HAVE_FPM_ACL
		zlog(ZLOG_NOTICE, "\tlisten.acl_users = %s",           STR2STR(wp->config->listen_acl_users));
		zlog(ZLOG_NOTICE, "\tlisten.acl_groups = %s",          STR2STR(wp->config->listen_acl_groups));
#endif
		FUNC4(ZLOG_NOTICE, "\tlisten.owner = %s",               FUNC2(wp->config->listen_owner));
		FUNC4(ZLOG_NOTICE, "\tlisten.group = %s",               FUNC2(wp->config->listen_group));
		FUNC4(ZLOG_NOTICE, "\tlisten.mode = %s",                FUNC2(wp->config->listen_mode));
		FUNC4(ZLOG_NOTICE, "\tlisten.allowed_clients = %s",     FUNC2(wp->config->listen_allowed_clients));
		if (wp->config->process_priority == 64) {
			FUNC4(ZLOG_NOTICE, "\tprocess.priority = undefined");
		} else {
			FUNC4(ZLOG_NOTICE, "\tprocess.priority = %d", wp->config->process_priority);
		}
		FUNC4(ZLOG_NOTICE, "\tprocess.dumpable = %s",           FUNC0(wp->config->process_dumpable));
		FUNC4(ZLOG_NOTICE, "\tpm = %s",                         FUNC1(wp->config->pm));
		FUNC4(ZLOG_NOTICE, "\tpm.max_children = %d",            wp->config->pm_max_children);
		FUNC4(ZLOG_NOTICE, "\tpm.start_servers = %d",           wp->config->pm_start_servers);
		FUNC4(ZLOG_NOTICE, "\tpm.min_spare_servers = %d",       wp->config->pm_min_spare_servers);
		FUNC4(ZLOG_NOTICE, "\tpm.max_spare_servers = %d",       wp->config->pm_max_spare_servers);
		FUNC4(ZLOG_NOTICE, "\tpm.process_idle_timeout = %d",    wp->config->pm_process_idle_timeout);
		FUNC4(ZLOG_NOTICE, "\tpm.max_requests = %d",            wp->config->pm_max_requests);
		FUNC4(ZLOG_NOTICE, "\tpm.status_path = %s",             FUNC2(wp->config->pm_status_path));
		FUNC4(ZLOG_NOTICE, "\tping.path = %s",                  FUNC2(wp->config->ping_path));
		FUNC4(ZLOG_NOTICE, "\tping.response = %s",              FUNC2(wp->config->ping_response));
		FUNC4(ZLOG_NOTICE, "\taccess.log = %s",                 FUNC2(wp->config->access_log));
		FUNC4(ZLOG_NOTICE, "\taccess.format = %s",              FUNC2(wp->config->access_format));
		FUNC4(ZLOG_NOTICE, "\tslowlog = %s",                    FUNC2(wp->config->slowlog));
		FUNC4(ZLOG_NOTICE, "\trequest_slowlog_timeout = %ds",   wp->config->request_slowlog_timeout);
		FUNC4(ZLOG_NOTICE, "\trequest_slowlog_trace_depth = %d", wp->config->request_slowlog_trace_depth);
		FUNC4(ZLOG_NOTICE, "\trequest_terminate_timeout = %ds", wp->config->request_terminate_timeout);
		FUNC4(ZLOG_NOTICE, "\trequest_terminate_timeout_track_finished = %s", FUNC0(wp->config->request_terminate_timeout_track_finished));
		FUNC4(ZLOG_NOTICE, "\trlimit_files = %d",               wp->config->rlimit_files);
		FUNC4(ZLOG_NOTICE, "\trlimit_core = %d",                wp->config->rlimit_core);
		FUNC4(ZLOG_NOTICE, "\tchroot = %s",                     FUNC2(wp->config->chroot));
		FUNC4(ZLOG_NOTICE, "\tchdir = %s",                      FUNC2(wp->config->chdir));
		FUNC4(ZLOG_NOTICE, "\tcatch_workers_output = %s",       FUNC0(wp->config->catch_workers_output));
		FUNC4(ZLOG_NOTICE, "\tdecorate_workers_output = %s",    FUNC0(wp->config->decorate_workers_output));
		FUNC4(ZLOG_NOTICE, "\tclear_env = %s",                  FUNC0(wp->config->clear_env));
		FUNC4(ZLOG_NOTICE, "\tsecurity.limit_extensions = %s",  wp->config->security_limit_extensions);

		for (kv = wp->config->env; kv; kv = kv->next) {
			FUNC4(ZLOG_NOTICE, "\tenv[%s] = %s", kv->key, kv->value);
		}

		for (kv = wp->config->php_values; kv; kv = kv->next) {
			FUNC4(ZLOG_NOTICE, "\tphp_value[%s] = %s", kv->key, kv->value);
		}

		for (kv = wp->config->php_admin_values; kv; kv = kv->next) {
			FUNC4(ZLOG_NOTICE, "\tphp_admin_value[%s] = %s", kv->key, kv->value);
		}
		FUNC4(ZLOG_NOTICE, " ");
	}
}