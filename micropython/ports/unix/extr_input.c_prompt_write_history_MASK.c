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
typedef  int /*<<< orphan*/  vstr_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 char** FUNC1 (int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  readline_hist ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC9 (int,char const*,int) ; 

void FUNC10(void) {
#if MICROPY_USE_READLINE_HISTORY
    #if MICROPY_USE_READLINE == 1
    char *home = getenv("HOME");
    if (home != NULL) {
        vstr_t vstr;
        vstr_init(&vstr, 50);
        vstr_printf(&vstr, "%s/.micropython.history", home);
        int fd = open(vstr_null_terminated_str(&vstr), O_CREAT | O_TRUNC | O_WRONLY, 0644);
        if (fd != -1) {
            for (int i = MP_ARRAY_SIZE(MP_STATE_PORT(readline_hist)) - 1; i >= 0; i--) {
                const char *line = MP_STATE_PORT(readline_hist)[i];
                if (line != NULL) {
                    int res;
                    res = write(fd, line, strlen(line));
                    res = write(fd, "\n", 1);
                    (void)res;
                }
            }
            close(fd);
        }
    }
    #endif
#endif
}