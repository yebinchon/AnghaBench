#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_name; } ;
struct group {scalar_t__ gr_gid; } ;
struct fpm_worker_pool_s {scalar_t__ set_uid; scalar_t__ set_gid; void* home; void* user; TYPE_1__* config; } ;
struct TYPE_4__ {int /*<<< orphan*/  run_as_root; } ;
struct TYPE_3__ {int process_priority; int /*<<< orphan*/  name; scalar_t__* chroot; scalar_t__* group; scalar_t__* user; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 TYPE_2__ fpm_globals ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct group* FUNC1 (scalar_t__*) ; 
 struct passwd* FUNC2 (scalar_t__*) ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__*,char*) ; 
 void* FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC10(struct fpm_worker_pool_s *wp) /* {{{ */
{
	struct passwd *pwd;
	int is_root = !FUNC0();

	if (is_root) {
		if (wp->config->user && *wp->config->user) {
			if (FUNC6(wp->config->user) == FUNC7(wp->config->user, "0123456789")) {
				wp->set_uid = FUNC8(wp->config->user, 0, 10);
			} else {
				struct passwd *pwd;

				pwd = FUNC2(wp->config->user);
				if (!pwd) {
					FUNC9(ZLOG_ERROR, "[pool %s] cannot get uid for user '%s'", wp->config->name, wp->config->user);
					return -1;
				}

				wp->set_uid = pwd->pw_uid;
				wp->set_gid = pwd->pw_gid;

				wp->user = FUNC5(pwd->pw_name);
				wp->home = FUNC5(pwd->pw_dir);
			}
		}

		if (wp->config->group && *wp->config->group) {
			if (FUNC6(wp->config->group) == FUNC7(wp->config->group, "0123456789")) {
				wp->set_gid = FUNC8(wp->config->group, 0, 10);
			} else {
				struct group *grp;

				grp = FUNC1(wp->config->group);
				if (!grp) {
					FUNC9(ZLOG_ERROR, "[pool %s] cannot get gid for group '%s'", wp->config->name, wp->config->group);
					return -1;
				}
				wp->set_gid = grp->gr_gid;
			}
		}

		if (!fpm_globals.run_as_root) {
			if (wp->set_uid == 0 || wp->set_gid == 0) {
				FUNC9(ZLOG_ERROR, "[pool %s] please specify user and group other than root", wp->config->name);
				return -1;
			}
		}
	} else { /* not root */
		if (wp->config->user && *wp->config->user) {
			FUNC9(ZLOG_NOTICE, "[pool %s] 'user' directive is ignored when FPM is not running as root", wp->config->name);
		}
		if (wp->config->group && *wp->config->group) {
			FUNC9(ZLOG_NOTICE, "[pool %s] 'group' directive is ignored when FPM is not running as root", wp->config->name);
		}
		if (wp->config->chroot && *wp->config->chroot) {
			FUNC9(ZLOG_NOTICE, "[pool %s] 'chroot' directive is ignored when FPM is not running as root", wp->config->name);
		}
		if (wp->config->process_priority != 64) {
			FUNC9(ZLOG_NOTICE, "[pool %s] 'process.priority' directive is ignored when FPM is not running as root", wp->config->name);
		}

		/* set up HOME and USER anyway */
		pwd = FUNC3(FUNC4());
		if (pwd) {
			wp->user = FUNC5(pwd->pw_name);
			wp->home = FUNC5(pwd->pw_dir);
		}
	}
	return 0;
}