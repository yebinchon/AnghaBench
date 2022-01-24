#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fpm_worker_pool_s {int socket_uid; int socket_gid; TYPE_1__* config; scalar_t__ socket_acl; } ;
typedef  scalar_t__ acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;
struct TYPE_2__ {char const* listen_address; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ACL_FIRST_ENTRY ; 
 int ACL_NEXT_ENTRY ; 
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

int FUNC10(struct fpm_worker_pool_s *wp, const char *path) /* {{{ */
{
#ifdef HAVE_FPM_ACL
	if (wp->socket_acl) {
		acl_t aclfile, aclconf;
		acl_entry_t entryfile, entryconf;
		int i;

		/* Read the socket ACL */
		aclconf = wp->socket_acl;
		aclfile = acl_get_file (path, ACL_TYPE_ACCESS);
		if (!aclfile) {
			zlog(ZLOG_SYSERROR, "[pool %s] failed to read the ACL of the socket '%s'", wp->config->name, path);
			return -1;
		}
		/* Copy the new ACL entry from config */
		for (i=ACL_FIRST_ENTRY ; acl_get_entry(aclconf, i, &entryconf) ; i=ACL_NEXT_ENTRY) {
			if (0 > acl_create_entry (&aclfile, &entryfile) ||
			    0 > acl_copy_entry(entryfile, entryconf)) {
				zlog(ZLOG_SYSERROR, "[pool %s] failed to add entry to the ACL of the socket '%s'", wp->config->name, path);
				acl_free(aclfile);
				return -1;
			}
		}
		/* Write the socket ACL */
		if (0 > acl_calc_mask (&aclfile) ||
			0 > acl_valid (aclfile) ||
			0 > acl_set_file (path, ACL_TYPE_ACCESS, aclfile)) {
			zlog(ZLOG_SYSERROR, "[pool %s] failed to write the ACL of the socket '%s'", wp->config->name, path);
			acl_free(aclfile);
			return -1;
		} else {
			zlog(ZLOG_DEBUG, "[pool %s] ACL of the socket '%s' is set", wp->config->name, path);
		}

		acl_free(aclfile);
		return 0;
	}
	/* When listen.users and listen.groups not configured, continue with standard right */
#endif

	if (wp->socket_uid != -1 || wp->socket_gid != -1) {
		if (0 > FUNC8(path, wp->socket_uid, wp->socket_gid)) {
			FUNC9(ZLOG_SYSERROR, "[pool %s] failed to chown() the socket '%s'", wp->config->name, wp->config->listen_address);
			return -1;
		}
	}
	return 0;
}