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
typedef  int /*<<< orphan*/  thread_name ;
typedef  int /*<<< orphan*/  process_name ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,int,char*,char*,char const*) ; 
 char* FUNC5 (char*,char) ; 

void FUNC6(const char *name)
{
    char thread_name[16];
    char process_name[PATH_MAX];
    char *tmp;
    int ret;

    if (FUNC1(FUNC0(), process_name, sizeof(process_name)) < 0)
        return;

    tmp = FUNC5(process_name, '/');
    if (!tmp)
        return;

    ret = FUNC4(thread_name, sizeof(thread_name), "%s %s", tmp + 1, name);
    if (ret < 0)
        return;

    FUNC3(FUNC2(), thread_name);
}