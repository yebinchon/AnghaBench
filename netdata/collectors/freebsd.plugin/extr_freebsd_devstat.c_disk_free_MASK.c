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
struct disk {struct disk* name; int /*<<< orphan*/  st_svctm; int /*<<< orphan*/  st_avagsz; int /*<<< orphan*/  st_await; int /*<<< orphan*/  st_iotime; int /*<<< orphan*/  st_util; int /*<<< orphan*/  st_qops; int /*<<< orphan*/  st_ops; int /*<<< orphan*/  st_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  disks_added ; 
 int /*<<< orphan*/  FUNC0 (struct disk*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct disk *dm) {
    if (FUNC1(dm->st_io))
        FUNC2(dm->st_io);
    if (FUNC1(dm->st_ops))
        FUNC2(dm->st_ops);
    if (FUNC1(dm->st_qops))
        FUNC2(dm->st_qops);
    if (FUNC1(dm->st_util))
        FUNC2(dm->st_util);
    if (FUNC1(dm->st_iotime))
        FUNC2(dm->st_iotime);
    if (FUNC1(dm->st_await))
        FUNC2(dm->st_await);
    if (FUNC1(dm->st_avagsz))
        FUNC2(dm->st_avagsz);
    if (FUNC1(dm->st_svctm))
        FUNC2(dm->st_svctm);

    disks_added--;
    FUNC0(dm->name);
    FUNC0(dm);
}