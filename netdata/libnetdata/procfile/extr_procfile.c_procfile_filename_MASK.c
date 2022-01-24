#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {char* filename; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ procfile ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

char *FUNC3(procfile *ff) {
    if(ff->filename[0]) return ff->filename;

    char buffer[FILENAME_MAX + 1];
    FUNC1(buffer, FILENAME_MAX, "/proc/self/fd/%d", ff->fd);

    ssize_t l = FUNC0(buffer, ff->filename, FILENAME_MAX);
    if(FUNC2(l == -1))
        FUNC1(ff->filename, FILENAME_MAX, "unknown filename for fd %d", ff->fd);
    else
        ff->filename[l] = '\0';

    // on non-linux systems, something like this will be needed
    // fcntl(ff->fd, F_GETPATH, ff->filename)

    return ff->filename;
}