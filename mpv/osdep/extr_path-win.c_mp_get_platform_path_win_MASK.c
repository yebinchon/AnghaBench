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
 int /*<<< orphan*/  FOLDERID_Desktop ; 
 char const* FUNC0 (void*) ; 
 char const* FUNC1 (void*) ; 
 char const* FUNC2 (void*,char*) ; 
 char const* FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  path_init ; 
 int /*<<< orphan*/  path_init_once ; 
 char const* portable_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

const char *FUNC6(void *talloc_ctx, const char *type)
{
    FUNC4(&path_init_once, path_init);
    if (portable_path) {
        if (FUNC5(type, "home") == 0)
            return portable_path;
    } else {
        if (FUNC5(type, "home") == 0)
            return FUNC0(talloc_ctx);
        if (FUNC5(type, "old_home") == 0)
            return FUNC1(talloc_ctx);
        // Not really true, but serves as a way to return a lowest-priority dir.
        if (FUNC5(type, "global") == 0)
            return FUNC2(talloc_ctx, "mpv");
    }
    if (FUNC5(type, "desktop") == 0)
        return FUNC3(talloc_ctx, &FOLDERID_Desktop);
    return NULL;
}