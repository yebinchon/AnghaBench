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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 

int FUNC8(int nochdir, int noclose)
{
    int fd;

    switch (FUNC4()) {
    case -1:
        return (-1);
    case 0:
        break;
    default:
        FUNC0(EXIT_SUCCESS);
    }

    if (FUNC7() == -1)
        return (-1);

    if (nochdir == 0) {
        if(FUNC1("/") != 0) {
            FUNC6("chdir");
            return (-1);
        }
    }

    if (noclose == 0 && (fd = FUNC5("/dev/null", O_RDWR, 0)) != -1) {
        if(FUNC3(fd, STDIN_FILENO) < 0) {
            FUNC6("dup2 stdin");
            return (-1);
        }
        if(FUNC3(fd, STDOUT_FILENO) < 0) {
            FUNC6("dup2 stdout");
            return (-1);
        }
        if(FUNC3(fd, STDERR_FILENO) < 0) {
            FUNC6("dup2 stderr");
            return (-1);
        }

        if (fd > STDERR_FILENO) {
            if(FUNC2(fd) < 0) {
                FUNC6("close");
                return (-1);
            }
        }
    }
    return (0);
}