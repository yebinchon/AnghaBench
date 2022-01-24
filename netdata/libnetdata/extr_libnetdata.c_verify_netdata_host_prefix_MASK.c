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
struct stat {int st_mode; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*,char**) ; 
 char* netdata_configured_host_prefix ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (char*,struct stat*) ; 

int FUNC5() {
    if(!netdata_configured_host_prefix)
        netdata_configured_host_prefix = "";

    if(!*netdata_configured_host_prefix)
        return 0;

    char buffer[FILENAME_MAX + 1];
    char *path = netdata_configured_host_prefix;
    char *reason = "unknown reason";
    errno = 0;

    struct stat sb;
    if (FUNC4(path, &sb) == -1) {
        reason = "failed to stat()";
        goto failed;
    }

    if((sb.st_mode & S_IFMT) != S_IFDIR) {
        errno = EINVAL;
        reason = "is not a directory";
        goto failed;
    }

    path = buffer;
    FUNC3(path, FILENAME_MAX, "%s/proc", netdata_configured_host_prefix);
    if(FUNC2(path, &reason) == -1)
        goto failed;

    FUNC3(path, FILENAME_MAX, "%s/sys", netdata_configured_host_prefix);
    if(FUNC2(path, &reason) == -1)
        goto failed;

    if(netdata_configured_host_prefix && *netdata_configured_host_prefix)
        FUNC1("Using host prefix directory '%s'", netdata_configured_host_prefix);

    return 0;

failed:
    FUNC0("Ignoring host prefix '%s': path '%s' %s", netdata_configured_host_prefix, path, reason);
    netdata_configured_host_prefix = "";
    return -1;
}