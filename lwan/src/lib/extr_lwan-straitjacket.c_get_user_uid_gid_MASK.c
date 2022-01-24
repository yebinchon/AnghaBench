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
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 long NSS_BUFLEN_PASSWD ; 
 int /*<<< orphan*/  _SC_GETPW_R_SIZE_MAX ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,struct passwd*,char*,size_t,struct passwd**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (size_t) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(const char *user, uid_t *uid, gid_t *gid)
{
    struct passwd pwd = {};
    struct passwd *result;
    char *buf;
    long pw_size_max = FUNC5(_SC_GETPW_R_SIZE_MAX);
    int r;

    if (pw_size_max < 0) {
        /* This constant is returned for sysconf(_SC_GETPW_R_SIZE_MAX) in glibc,
         * and it seems to be a reasonable size (1024).  Use it as a fallback in
         * the (very unlikely) case where sysconf() fails. */
        pw_size_max = NSS_BUFLEN_PASSWD;
    }

    buf = FUNC4((size_t)pw_size_max);
    if (!buf) {
        FUNC2("Could not allocate buffer for passwd struct");
        return false;
    }

    r = FUNC1(user, &pwd, buf, (size_t)pw_size_max, &result);
    *uid = pwd.pw_uid;
    *gid = pwd.pw_gid;
    FUNC0(buf);

    if (result)
        return true;

    if (!r) {
        FUNC2("Username not found: %s", user);
    } else {
        errno = r;
        FUNC3("Could not obtain uid/gid for user %s", user);
    }

    return false;
}