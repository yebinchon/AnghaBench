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
struct mypopen {scalar_t__ pid; struct mypopen* next; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  myp_lock ; 
 scalar_t__ myp_tracking ; 
 struct mypopen* mypopen_root ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(pid_t pid) {
    struct mypopen *mp;

    if (myp_tracking == 0)
        return 0;

    FUNC0(&myp_lock);
    for (mp = mypopen_root; mp != NULL; mp = mp->next) {
        if (mp->pid == pid) {
            FUNC1(&myp_lock);
            return 0;
        }
    }
    FUNC1(&myp_lock);

    return 1;
}