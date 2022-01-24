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
struct mp_log {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,...) ; 
 int FUNC5 (char const*,int) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static char *FUNC7(struct mp_log *log, const char *filename, int64_t * length)
{
    int fd;
    char *buffer = NULL;

    FUNC4(log, "Loading cookie file: %s\n", filename);

    fd = FUNC5(filename, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        FUNC4(log, "Could not open");
        goto err_out;
    }

    *length = FUNC2(fd, 0, SEEK_END);

    if (*length < 0) {
        FUNC4(log, "Could not find EOF");
        goto err_out;
    }

    if (*length > SIZE_MAX - 1) {
        FUNC4(log, "File too big, could not malloc.");
        goto err_out;
    }

    FUNC2(fd, 0, SEEK_SET);

    if (!(buffer = FUNC3(*length + 1))) {
        FUNC4(log, "Could not malloc.");
        goto err_out;
    }

    if (FUNC6(fd, buffer, *length) != *length) {
        FUNC4(log, "Read is behaving funny.");
        goto err_out;
    }
    FUNC0(fd);
    buffer[*length] = 0;

    return buffer;

err_out:
    if (fd != -1) FUNC0(fd);
    FUNC1(buffer);
    return NULL;
}