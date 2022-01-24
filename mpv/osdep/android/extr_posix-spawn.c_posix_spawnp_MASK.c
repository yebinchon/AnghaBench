#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  posix_spawnattr_t ;
struct TYPE_5__ {int used; TYPE_1__* action; } ;
typedef  TYPE_2__ posix_spawn_file_actions_t ;
typedef  int pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  newfiledes; int /*<<< orphan*/  filedes; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char const*,char* const*,char* const*) ; 
 int FUNC3 () ; 

int FUNC4(pid_t *pid, const char *file,
    const posix_spawn_file_actions_t *fa,
    const posix_spawnattr_t *attrp,
    char *const argv[], char *const envp[])
{
    pid_t p;

    if (attrp != NULL)
        return EINVAL;

    p = FUNC3();
    if (p == -1)
        return errno;

    if (p == 0) {
        for (int i = 0; i < fa->used; i++) {
            int err = FUNC1(fa->action[i].filedes, fa->action[i].newfiledes);
            if (err == -1)
                goto fail;
        }
        FUNC2(file, argv, envp);
fail:
        FUNC0(127);
    }

    *pid = p;
    return 0;
}