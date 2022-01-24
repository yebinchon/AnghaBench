#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mypopen {scalar_t__ pid; struct mypopen* next; TYPE_1__* prev; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {struct mypopen* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mypopen*) ; 
 int /*<<< orphan*/  myp_lock ; 
 scalar_t__ myp_tracking ; 
 struct mypopen* mypopen_root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(pid_t pid) {
    struct mypopen *mp;

    if (myp_tracking == 0)
        return;

    FUNC2(&myp_lock);
    for (mp = mypopen_root; mp != NULL; mp = mp->next) {
        if (mp->pid == pid) {
            if (mp->next != NULL)
                mp->next->prev = mp->prev;
            if (mp->prev != NULL)
                mp->prev->next = mp->next;
            if (mypopen_root == mp)
                mypopen_root = mp->next;
            FUNC1(mp);
            break;
        }
    }

    if (mp == NULL)
        FUNC0("Cannot find pid %d.", pid);

    FUNC3(&myp_lock);
}