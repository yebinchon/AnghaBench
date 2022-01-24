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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (char*,size_t,char*,char*) ; 
 char* FUNC3 (char*,char) ; 

const char *FUNC4(char *path_buf, size_t path_buf_len)
{
    char buffer[PATH_MAX];

    if (FUNC1(FUNC0(), buffer, sizeof(buffer)) < 0)
        goto out;

    char *path = FUNC3(buffer, '/');
    if (!path)
        goto out;
    int ret = FUNC2(path_buf, path_buf_len, "%s.conf", path + 1);
    if (ret < 0 || ret >= (int)path_buf_len)
        goto out;

    return path_buf;

out:
    return "lwan.conf";
}