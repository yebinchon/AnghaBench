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
struct mpv_global {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpv_global*,char*,char const*,char*) ; 
 int /*<<< orphan*/ * config_dirs ; 
 scalar_t__ FUNC1 (void*,struct mpv_global*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (void*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 

char *FUNC5(void *talloc_ctx, struct mpv_global *global,
                               const char *filename)
{
    void *tmp = FUNC4(NULL);
    char *res = (char *)FUNC1(tmp, global, config_dirs[0]);
    if (res)
        res = FUNC2(talloc_ctx, res, filename);
    FUNC3(tmp);
    FUNC0(global, "config path: '%s' -> '%s'\n", filename, res ? res : "-");
    return res;
}