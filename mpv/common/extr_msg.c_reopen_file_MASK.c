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
struct mpv_global {int /*<<< orphan*/  log; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC3 (void*,struct mpv_global*,char*) ; 
 int /*<<< orphan*/  mp_msg_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(char *opt, char **current_path, FILE **file,
                        const char *type, struct mpv_global *global)
{
    void *tmp = FUNC8(NULL);
    bool fail = false;

    char *new_path = FUNC3(tmp, global, opt);
    if (!new_path)
        new_path = "";

    FUNC4(&mp_msg_lock); // for *current_path/*file

    char *old_path = *current_path ? *current_path : "";
    if (FUNC6(old_path, new_path) != 0) {
        if (*file)
            FUNC0(*file);
        *file = NULL;
        FUNC7(*current_path);
        *current_path = FUNC9(NULL, new_path);
        if (new_path[0]) {
            *file = FUNC1(new_path, "wb");
            fail = !*file;
        }
    }

    FUNC5(&mp_msg_lock);

    if (fail)
        FUNC2(global->log, "Failed to open %s file '%s'\n", type, new_path);

    FUNC7(tmp);
}