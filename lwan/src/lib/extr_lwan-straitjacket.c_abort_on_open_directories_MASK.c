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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  own_fd ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int,char*,char*,int) ; 
 int FUNC8 (char*,int,char*,int) ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    /* This is racy, but is a way to detect misconfiguration.  Since it's
     * called just once during boot time, before threads are created, this
     * should be fine (maybe not if Lwan is used as a library.)
     */
    DIR *dir = FUNC5("/proc/self/fd");
    struct dirent *ent;
    char own_fd[3 * sizeof(int)];
    int ret;

    if (!dir) {
        FUNC4(
            "Could not determine if there are open directory fds");
    }

    ret = FUNC8(own_fd, sizeof(own_fd), "%d", FUNC2(dir));
    if (ret < 0 || ret >= (int)sizeof(own_fd)) {
        FUNC3("Could not get descriptor of /proc/self/fd");
    }    

    while ((ent = FUNC6(dir))) {
        char path[PATH_MAX];
        struct stat st;
        ssize_t len;

        if (FUNC10(ent->d_name, own_fd))
            continue;
        if (FUNC10(ent->d_name, ".") || FUNC10(ent->d_name, ".."))
            continue;

        len = FUNC7(FUNC2(dir), ent->d_name, path, sizeof(path));
        if (len < 0) {
            FUNC4(
                "Could not get information about fd %s", ent->d_name);
        }
        path[len] = '\0';

        if (path[0] != '/') {
            /* readlink() there will point to the realpath() of a file, so
             * if it's on a filesystem, it starts with '/'.  Sockets, for
             * instance, begin with "socket:" instead...  so no need for
             * stat().  */
            continue;
        }

        if (FUNC9(path, &st) < 0) {
            FUNC4(
                "Could not get information about open file: %s", path);
        }

        if (FUNC0(st.st_mode)) {
            FUNC1(dir);

            FUNC3(
                "The directory '%s' is open (fd %s), can't chroot",
                path, ent->d_name);
            return;
        }
    }

    FUNC1(dir);
}