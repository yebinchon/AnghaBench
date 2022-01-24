#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct key_value_s {struct key_value_s* value; struct key_value_s* key; struct key_value_s* next; } ;
struct fpm_worker_pool_config_s {struct key_value_s* env; struct key_value_s* php_admin_values; struct key_value_s* php_values; struct key_value_s* apparmor_hat; struct key_value_s* security_limit_extensions; struct key_value_s* chdir; struct key_value_s* chroot; struct key_value_s* slowlog; struct key_value_s* access_format; struct key_value_s* access_log; struct key_value_s* ping_response; struct key_value_s* ping_path; struct key_value_s* pm_status_path; struct key_value_s* listen_allowed_clients; struct key_value_s* listen_mode; struct key_value_s* listen_group; struct key_value_s* listen_owner; struct key_value_s* listen_address; struct key_value_s* group; struct key_value_s* user; struct key_value_s* prefix; struct key_value_s* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_value_s*) ; 

int FUNC1(struct fpm_worker_pool_config_s *wpc) /* {{{ */
{
	struct key_value_s *kv, *kv_next;

	FUNC0(wpc->name);
	FUNC0(wpc->prefix);
	FUNC0(wpc->user);
	FUNC0(wpc->group);
	FUNC0(wpc->listen_address);
	FUNC0(wpc->listen_owner);
	FUNC0(wpc->listen_group);
	FUNC0(wpc->listen_mode);
	FUNC0(wpc->listen_allowed_clients);
	FUNC0(wpc->pm_status_path);
	FUNC0(wpc->ping_path);
	FUNC0(wpc->ping_response);
	FUNC0(wpc->access_log);
	FUNC0(wpc->access_format);
	FUNC0(wpc->slowlog);
	FUNC0(wpc->chroot);
	FUNC0(wpc->chdir);
	FUNC0(wpc->security_limit_extensions);
#ifdef HAVE_APPARMOR
	free(wpc->apparmor_hat);
#endif

	for (kv = wpc->php_values; kv; kv = kv_next) {
		kv_next = kv->next;
		FUNC0(kv->key);
		FUNC0(kv->value);
		FUNC0(kv);
	}
	for (kv = wpc->php_admin_values; kv; kv = kv_next) {
		kv_next = kv->next;
		FUNC0(kv->key);
		FUNC0(kv->value);
		FUNC0(kv);
	}
	for (kv = wpc->env; kv; kv = kv_next) {
		kv_next = kv->next;
		FUNC0(kv->key);
		FUNC0(kv->value);
		FUNC0(kv);
	}

	return 0;
}