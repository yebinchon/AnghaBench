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
struct disk {struct disk* next; scalar_t__ updated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct disk*) ; 
 scalar_t__ disks_added ; 
 scalar_t__ disks_found ; 
 struct disk* disks_last_used ; 
 struct disk* disks_root ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3() {
    if (FUNC1(disks_found == disks_added)) return;

    struct disk *dm = disks_root, *last = NULL;
    while(dm) {
        if (FUNC2(!dm->updated)) {
            // info("Removing disk '%s', linked after '%s'", dm->name, last?last->name:"ROOT");

            if (disks_last_used == dm)
                disks_last_used = last;

            struct disk *t = dm;

            if (dm == disks_root || !last)
                disks_root = dm = dm->next;

            else
                last->next = dm = dm->next;

            t->next = NULL;
            FUNC0(t);
        }
        else {
            last = dm;
            dm->updated = 0;
            dm = dm->next;
        }
    }
}