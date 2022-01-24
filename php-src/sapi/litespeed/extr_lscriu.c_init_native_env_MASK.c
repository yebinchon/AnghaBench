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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  iPidDump ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_criu_image_path ; 
 int /*<<< orphan*/  s_fd_native ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6()
{
    char *pchFd;
    pchFd = FUNC1("LSAPI_CRIU_SYNC_FD");
    if (!pchFd)
        pchFd = FUNC1("LSCAPI_CRIU_SYNC_FD");

    const char *image_path;
    image_path = FUNC1("LSAPI_CRIU_IMAGE_PATH");
    if (!pchFd) {
        FUNC4("LSCRIU (%d): LSAPI_CRIU_SYNC_FD internal environment "
                   "variable not set - contact Litespeed tech support\n", FUNC2());
        return -1;
    }
    if (!image_path) {
        FUNC4("LSCRIU (%d): LSAPI_CRIU_IMAGE_PATH internal environment "
                   "variable not set - contact Litespeed tech support\n", FUNC2());
        return -1;
    }
    FUNC3("LSCRIU (%d): Checkpoint dump.  ImagePath: %s\n",
               FUNC2(), image_path);

    s_fd_native = FUNC0(pchFd);
    FUNC3("LSCRIU (%d): Native checkpoint.  Use filepointer %d (%s) to send "
               "pid %d\n", FUNC2(), s_fd_native, pchFd, iPidDump);
    s_criu_image_path  = FUNC5(image_path);
    return 0;
}