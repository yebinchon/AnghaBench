#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ result; } ;
typedef  TYPE_1__ uv_fs_t ;
typedef  scalar_t__ uv_file ;

/* Variables and functions */
 int /*<<< orphan*/  F_NOCACHE ; 
 int O_DIRECT ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(char *path, int flags, uv_file *file)
{
    uv_fs_t req;
    int fd, current_flags, direct;

    for (direct = 1 ; direct >= 0 ; --direct) {
#ifdef __APPLE__
        /* Apple OS does not support O_DIRECT */
        direct = 0;
#endif
        current_flags = flags;
        if (direct) {
            current_flags |= O_DIRECT;
        }
        fd = FUNC4(NULL, &req, path, current_flags, S_IRUSR | S_IWUSR, NULL);
        if (fd < 0) {
            if ((direct) && (UV_EINVAL == fd)) {
                FUNC1("File \"%s\" does not support direct I/O, falling back to buffered I/O.", path);
            } else {
                FUNC1("Failed to open file \"%s\".", path);
                --direct; /* break the loop */
            }
        } else {
            FUNC0(req.result >= 0);
            *file = req.result;
#ifdef __APPLE__
            info("Disabling OS X caching for file \"%s\".", path);
            fcntl(fd, F_NOCACHE, 1);
#endif
            --direct; /* break the loop */
        }
        FUNC5(&req);
    }

    return fd;
}