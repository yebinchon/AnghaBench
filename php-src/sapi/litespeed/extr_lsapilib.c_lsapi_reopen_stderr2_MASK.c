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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (char const*,int,int) ; 
 char const* s_stderr_log_path ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *full_path)
{
    int newfd = FUNC4(full_path, O_WRONLY | O_CREAT | O_APPEND, 0644);
    if (newfd == -1)
    {
        FUNC0(NULL, "Failed to open custom stderr log", full_path);
        return -1;
    }
    if (newfd != 2)
    {
        FUNC2(newfd, 2);
        FUNC1(newfd);
        FUNC2(2, 1);
    }
    if (s_stderr_log_path && full_path != s_stderr_log_path)
    {
        FUNC3(s_stderr_log_path);
        s_stderr_log_path = NULL;
    }
    s_stderr_log_path = FUNC5(full_path);
    return 0;
}