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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 char* FUNC4 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(const char *envp[])
{
    const char *daemon_string = FUNC4("daemon", envp);
    if (daemon_string && daemon_string[0] == '1')
    {
        const char *log_redirect = FUNC4("daemon_log_redirect", envp);
        int fd = -1;
        if (log_redirect && log_redirect[0] == '1')
        {
            fd = FUNC2(2);
        }
        if (FUNC1(0, 0) < 0)
        {
            FUNC5("DOWN-ROOT: daemonization failed");
        }
        else if (fd >= 3)
        {
            FUNC3(fd, 2);
            FUNC0(fd);
        }
    }
}