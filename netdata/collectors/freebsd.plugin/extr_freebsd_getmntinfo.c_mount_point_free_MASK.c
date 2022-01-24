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
struct mount_point {struct mount_point* name; int /*<<< orphan*/  st_inodes; int /*<<< orphan*/  st_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount_point*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mount_points_added ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mount_point *m) {
    if (FUNC1(m->st_space))
        FUNC2(m->st_space);
    if (FUNC1(m->st_inodes))
        FUNC2(m->st_inodes);

    mount_points_added--;
    FUNC0(m->name);
    FUNC0(m);
}