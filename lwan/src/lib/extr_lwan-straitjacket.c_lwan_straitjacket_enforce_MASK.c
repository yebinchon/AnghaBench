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
typedef  int /*<<< orphan*/  uid_t ;
struct lwan_straitjacket {scalar_t__ drop_capabilities; scalar_t__* user_name; scalar_t__ chroot_path; } ;
struct __user_cap_header_struct {int /*<<< orphan*/  version; } ;
struct __user_cap_data_struct {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  _LINUX_CAPABILITY_VERSION_1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct __user_cap_header_struct*,struct __user_cap_data_struct*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC10(const struct lwan_straitjacket *sj)
{
    uid_t uid = 0;
    gid_t gid = 0;
    bool got_uid_gid = false;

    if (!sj->user_name && !sj->chroot_path)
        goto out;

    if (FUNC5() != 0)
        FUNC6("Straitjacket requires root privileges");

    if (sj->user_name && *sj->user_name) {
        if (!FUNC4(sj->user_name, &uid, &gid))
            FUNC6("Unknown user: %s", sj->user_name);
        got_uid_gid = true;
    }

    if (sj->chroot_path) {
        FUNC0();

        if (FUNC3(sj->chroot_path) < 0) {
            FUNC7("Could not chroot() to %s",
                                        sj->chroot_path);
        }

        if (FUNC2("/") < 0)
            FUNC7("Could not chdir() to /");

        FUNC8("Jailed to %s", sj->chroot_path);
    }

    if (got_uid_gid) {
        if (!FUNC9(uid, gid, sj->user_name))
            FUNC6("Could not drop privileges to %s, aborting",
                                 sj->user_name);
    }

out:
    if (sj->drop_capabilities) {
        struct __user_cap_header_struct header = {
            .version = _LINUX_CAPABILITY_VERSION_1
        };
        struct __user_cap_data_struct data = {};

        if (FUNC1(&header, &data) < 0)
            FUNC7("Could not drop capabilities");
    }
}