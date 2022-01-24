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
 char const* MPV_CONFDIR ; 
 char const* FUNC0 (char*) ; 
 char const* mpv_home ; 
 char const* old_home ; 
 int /*<<< orphan*/  path_init ; 
 int /*<<< orphan*/  path_init_once ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

const char *FUNC3(void *talloc_ctx, const char *type)
{
    FUNC1(&path_init_once, path_init);
    if (FUNC2(type, "home") == 0)
        return mpv_home;
    if (FUNC2(type, "old_home") == 0)
        return old_home;
    if (FUNC2(type, "global") == 0)
        return MPV_CONFDIR;
    if (FUNC2(type, "desktop") == 0)
        return FUNC0("HOME");
    return NULL;
}