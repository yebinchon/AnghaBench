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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char* const) ; 
 int /*<<< orphan*/  FUNC1 (char* const,char* const*,char* const*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char* const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char* const) ; 

__attribute__((used)) static int
FUNC6(char *const *argv, char *const *envp)
{
    pid_t pid;
    int ret = 0;

    pid = FUNC2();
    if (pid == (pid_t)0)   /* child side */
    {
        FUNC1(argv[0], argv, envp);
        /* If execve() fails to run, exit child with exit code 127 */
        FUNC0(127, "DOWN-ROOT: Failed execute: %s", argv[0]);
    }
    else if (pid < (pid_t)0)
    {
        FUNC5("DOWN-ROOT: Failed to fork child to run %s", argv[0]);
        return -1;
    }
    else     /* parent side */
    {
        if (FUNC4(pid, &ret, 0) != pid)
        {
            /* waitpid does not return error information via errno */
            FUNC3(stderr, "DOWN-ROOT: waitpid() failed, don't know exit code of child (%s)\n", argv[0]);
            return -1;
        }
    }
    return ret;
}